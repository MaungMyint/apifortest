<?php

namespace App\Http\Controllers;

use App\RestaurantData;
use Illuminate\Http\Request;

class RestaurantDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $restaurantData = RestaurantData::all();
        return response()->json($restaurantData);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
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
        $validatormy = $this->validate($request, [
            'myanmarname' => 'required',
            'englishname' => 'required',
            'restauranttype' => 'required',
            'restaurantphone' => 'required',
            'opentime' => 'required',
            'closetime' => 'required',
            'closeweekday' => 'required',
            'address' => 'required',
            'addresscity' => 'required',
            'descrition' => 'required',
            'myanmarfoods' => 'required',
            'khayafoods' => 'required',
            'chinsefoods' => 'required',
            'shanfoods' => 'required',
            'thailandfoods' => 'required',
            'foreignfoods' => 'required',
            'restaurantimage' => 'mimes:jpeg,png,jpg|max:5000',
           ]);

           if($request->hasfile('restaurantimage'))
        {
           $image = $request->file('restaurantimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $restaurantimage = '/image/'.$name;
        }
        $donated= new RestaurantData();
        $donated->myanmarname =$request->myanmarname;
        $donated->englishname =$request->englishname;
        $donated->restauranttype =$request->restauranttype;
        $donated->restaurantphone =$request->restaurantphone;
        $donated->opentime =$request->opentime;
        $donated->closetime =$request->closetime;
        $donated->closeweekday =$request->closeweekday;
        $donated->address =$request->address;
        $donated->addresscity =$request->addresscity;
        $donated->descrition =$request->descrition;
        $donated->myanmarfoods =$request->myanmarfoods;
        $donated->khayafoods =$request->khayafoods;
        $donated->chinsefoods =$request->chinsefoods;
        $donated->shanfoods =$request->shanfoods;
        $donated->thailandfoods =$request->thailandfoods;
        $donated->foreignfoods =$request->foreignfoods;
        $donated->restaurantimage =$restaurantimage;

        if($donated->save())
        return response()->json('done');
        else
        return response()->json('sorry',500);


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\RestaurantData  $restaurantData
     * @return \Illuminate\Http\Response
     */
    public function show(RestaurantData $restaurantData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\RestaurantData  $restaurantData
     * @return \Illuminate\Http\Response
     */
    public function edit(RestaurantData $restaurantData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\RestaurantData  $restaurantData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RestaurantData $restaurantData)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\RestaurantData  $restaurantData
     * @return \Illuminate\Http\Response
     */
    public function destroy(RestaurantData $restaurantData)
    {
        //
    }
}
