<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

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
        $clients = Client::where('client_name', 'LIKE', '%'.$request->search.'%')
                            ->orWhere('client_detail', 'LIKE', '%'.$request->search.'%') 
                            ->get();

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
            'logo' => 'max:10240',
            'gallery1' => 'max:10240',
            'gallery2' => 'max:10240',
            'gallery3' => 'max:10240',
        ]);
        
        if ($request->hasFile('logo')) { 
            $image      = $request->file('logo');  
            $fileName   = time() . '.' . $image->getClientOriginalExtension();  

            $img = Image::make($image);  
            $img->resize(120, 120, function ($constraint) {
                $constraint->aspectRatio();                  
            }); 

            Storage::disk('local')->put('public/client/'.$fileName, $img); 
            
            $path = $fileName;
           
            Client::where('client_id', 1)->first()->update(['client_image' => $path ]); 
        }

        if ($request->has('gallery')) { 
            
            foreach ( $request->input('gallery') as $key => $gallery ){ 
                
                $image      = $request->file('gallery.');    
                $fileName   = time() . '.' . $image->getClientOriginalExtension();  
                
                $img = Image::make($image);  
                $img->resize(120, 120, function ($constraint) {
                     $constraint->aspectRatio();                  
                }); 
                
                Storage::disk('local')->put('public/client_gallery/'.$fileName, $img); 
            
                $path = $fileName;
           
                Client::where('client_id', 1)->first()->update(['client_gallery'.$key => $path ]);
            }
            
             

            

             
        }

    }
}
