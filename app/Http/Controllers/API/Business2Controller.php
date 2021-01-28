<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Business;
use App\Models\Business2;
use Illuminate\Http\Request;

class Business2Controller extends Controller
{
    const paginate = 10;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($business)
    {
        
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
    public function show(Business2 $business2, Request $request)
    {
        if($request->region_id == 0)
        $clients = $business2->client()->select('client_id', 'client_date_entry', 'client_name', 'client_address', 'client_mobile1', 'client_image', 'client_star')
        ->orderBy('client_star', 'DESC')->orderBy('client_date_entry', 'DESC')
        ->orderBy('client_visible', 'DESC')->orderBy('client_date_entry', 'DESC')
        ->paginate(self::paginate);
        
        else
        $clients = $business2->client()->select('client_id', 'client_date_entry', 'client_name', 'client_address', 'client_mobile1', 'client_image', 'client_star')
        ->where('client_region', $request->region_id)
        ->orderBy('client_star', 'DESC')->orderBy('client_date_entry', 'DESC')
        ->orderBy('client_visible', 'DESC')->orderBy('client_date_entry', 'DESC')
        ->paginate(self::paginate);
        
        
        
        return response()->json($clients);
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

}
