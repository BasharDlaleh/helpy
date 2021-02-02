<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Str;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Client $client)
    {   
        $client_view = $client->client_view;   $client_view += 1;

        $client->update(['client_view' => $client_view]);

        return response()->json($client);
    }


    public function fastSearch(Request $request)
    {
        if($request->region_id == 0)
        $clients = Client::where('client_name', 'LIKE', '%'.$request->search.'%')
                        ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%')->get();

        else
        $clients = Client::where('client_region', $request->region_id)
                            ->where(function($query) use ($request){
                                $query->where('client_name', 'LIKE', '%'.$request->search.'%')
                                ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%'); 
                            })->get();

        return response()->json($clients);
    }

    public function customSearch(Request $request)
    {  
        $clients = Client::where($request->only(['client_region', 'client_business', 'client_business_2']))
                                         ->where(function($query) use ($request){
                                                   $query->where('client_name', 'LIKE', '%'.$request->search.'%')
                                                         ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%');
                                                })->get();

        return response()->json($clients);
    }

    public function getProfile()
    {  
        return auth()->user()->client_detail;
    }

    public function updateProfile(Request $request)
    { 
        $request->validate([
            'logo' => 'max:1024',
            'gallery1' => 'max:1024',
            'gallery2' => 'max:1024',
            'gallery3' => 'max:1024',
        ]);
        
        if ($request->hasFile('logo')) { 
            $image      = $request->file('logo');  
            $fileName   = microtime() . '.' . $image->getClientOriginalExtension();  

            $img = Image::make($image);  

            Storage::disk('local')->put('public/client/'.$fileName, $img); 
            
            $path = $fileName;
           
            $current_image = auth()->user()->client_image; 
                
            $current_image = Str::replaceFirst('/storage/client/', '', $current_image);
            
            if(Storage::disk('local')->has('public/client/'.$current_image)) Storage::delete('/public/client/'. $current_image);
            
            auth()->user()->update(['client_image' => $path ]); 
        }

        if ($request->has('gallery')) {  
            
            foreach ( $request->gallery as $key => $gallery ){ 
                
                if($key > 2) continue;
                
                $image      = $request->file('gallery.'.$key);    
                $fileName   = microtime() . '.' . $image->getClientOriginalExtension();  
                
                $img = Image::make($image);  

                Storage::disk('local')->put('public/client_gallery/'.$fileName, $img); 
            
                $path = $fileName;
                
                $num=$key+1; $culomn_gallery = 'client_gallery_'.$num;
              
                $current_image = auth()->user()->{$culomn_gallery}; 
                
                $current_image = Str::replaceFirst('/storage/client_gallery/', '', $current_image); 
                
                if(Storage::disk('local')->has('public/client_gallery/'.$current_image)) Storage::delete('/public/client_gallery/'. $current_image);
                
                auth()->user()->update(['client_gallery_'.$num => $path ]);
            }

        }
        
        return response()->json(['message' => 'success']);

    }
}
