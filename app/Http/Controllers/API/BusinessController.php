<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Business;
use App\Models\Region;
use Illuminate\Http\Request;

class BusinessController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    { 
        $businesses = Business::select('business_id', 'business_name','business_image')->orderBy("business_name")->paginate($request->limit);
        
        // $businesses = $businesses->map(function ($business) {
        //    $business->business_image = '/storage/business/'.$business->business_image;
        //    return $business;
        // });
        
        return response()->json($businesses);
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
    public function show(Business $business, Request $request)
    { 
        $businesses2 = $business->business2()->select('business_2_id', 'business_2_name', 'business_2_image')->orderBy('business_2_name')->paginate($request->limit);
        
        // $businesses2 = $businesses2->map(function ($business) {
        //    $business->business_2_image = '/storage/business2/'.$business->business_image;
        //    return $business;
        // });
        
        return response()->json($businesses2);
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

    public function showSearchData()
    { 
        $regions = Region::all()->toArray();

        $businesses = Business::with(['business2:business_2_id,business_2_name,business_1'])->select('business_id', 'business_name')->orderBy("business_name")->get()->toArray();
        
        return response()->json(array_merge(['regions' => $regions],['businesses' => $businesses]));
    }

    // public function showBusiness2Names(Business $business)
    // { 
    //     $businesses2 = $business->business2()->select('business_2_id', 'business_2_name')->orderBy('business_2_name')->get();
        
    //     return response()->json($businesses2);
    // }
}
