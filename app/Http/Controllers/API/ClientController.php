<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
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
}
