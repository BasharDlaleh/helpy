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
                        ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%')->paginate($request->limit);

        else
        $clients = Client::where('client_region', $request->region_id)
                            ->where(function($query) use ($request){
                                $query->where('client_name', 'LIKE', '%'.$request->search.'%')
                                ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%'); 
                            })->paginate($request->limit);

        return response()->json($clients);
    }

    public function customSearch(Request $request)
    {  
        $clients = Client::where($request->only(['client_region', 'client_business', 'client_business_2']))
                                         ->where(function($query) use ($request){
                                                   $query->where('client_name', 'LIKE', '%'.$request->search.'%')
                                                         ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%');
                                                })->paginate($request->limit);

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
            
            if(Storage::disk('local')->has('public/client/'.$current_image) && $current_image !== 'client.PNG') Storage::delete('/public/client/'. $current_image);
            
            auth()->user()->update(['client_image' => $path ]); 
        }

        if ($request->hasFile('gallery1')) {  
                
                $image      = $request->file('gallery1');    
                $fileName   = microtime() . '.' . $image->getClientOriginalExtension();  
                
                $img = Image::make($image);  

                Storage::disk('local')->put('public/client_gallery/'.$fileName, $img); 
                              
                $current_image = auth()->user()->client_gallery_1; 
                
                $current_image = Str::replaceFirst('/storage/client_gallery/', '', $current_image); 
                
                if(Storage::disk('local')->has('public/client_gallery/'.$current_image) && $current_image !== 'client_gallery1.jpg') Storage::delete('/public/client_gallery/'. $current_image);
                
                auth()->user()->update(['client_gallery_1' => $fileName ]);
            }

            if ($request->hasFile('gallery2')) {  
                
                $image      = $request->file('gallery2');    
                $fileName   = microtime() . '.' . $image->getClientOriginalExtension();  
                
                $img = Image::make($image);  

                Storage::disk('local')->put('public/client_gallery/'.$fileName, $img); 
                              
                $current_image = auth()->user()->client_gallery_2; 
                
                $current_image = Str::replaceFirst('/storage/client_gallery/', '', $current_image); 
                
                if(Storage::disk('local')->has('public/client_gallery/'.$current_image) && $current_image !== 'client_gallery2.jpg') Storage::delete('/public/client_gallery/'. $current_image);
                
                auth()->user()->update(['client_gallery_2' => $fileName ]);
            }

            if ($request->hasFile('gallery3')) {  
                
                $image      = $request->file('gallery3');    
                $fileName   = microtime() . '.' . $image->getClientOriginalExtension();  
                
                $img = Image::make($image);  

                Storage::disk('local')->put('public/client_gallery/'.$fileName, $img); 
                              
                $current_image = auth()->user()->client_gallery_3; 
                
                $current_image = Str::replaceFirst('/storage/client_gallery/', '', $current_image); 
                
                if(Storage::disk('local')->has('public/client_gallery/'.$current_image) && $current_image !== 'client_gallery3.jpg') Storage::delete('/public/client_gallery/'. $current_image);
                
                auth()->user()->update(['client_gallery_3' => $fileName ]);
            }

        
        
        return response()->json(['message' => 'success']);

    }
}
