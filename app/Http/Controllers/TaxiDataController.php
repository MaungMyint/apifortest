<?php

namespace App\Http\Controllers;

use App\TaxiData;
use Illuminate\Http\Request;

class TaxiDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $taxiData  = TaxiData::all();
        return response()->json($taxiData);
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
            'driverenglishname' => 'required',
            'drivermyanmarname' => 'required',
            'driverphone' => 'required',
            'driveraddress' => 'required',
            'driveraddresscity' => 'required',
            'descrition' => 'required',
            'cartype' => 'required',
            'carintnumber' => 'required',
            'carcharacter' => 'required',
            'carimage' => 'mimes:jpeg,png,jpg|max:5000',
            'driverimage' => 'mimes:jpeg,png,jpg|max:5000',
        ]);
        if($request->hasfile('carimage'))
        {
           $image = $request->file('carimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $carimage = '/image/'.$name;
        }
        if($request->hasfile('driverimage'))
        {
           $image = $request->file('driverimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $driverimage = '/image/'.$name;
        }
        $donated= new TaxiData();
        $donated->driverenglishname =$request->driverenglishname;
        $donated->drivermyanmarname =$request->drivermyanmarname;
        $donated->driverphone =$request->driverphone;
        $donated->driveraddress =$request->driveraddress;
        $donated->driveraddresscity =$request->driveraddresscity;
        $donated->descrition =$request->descrition;
        $donated->cartype =$request->cartype;
        $donated->carintnumber =$request->carintnumber;
        $donated->carcharacter =$request->carcharacter;
        $donated->carimage =$carimage;
        $donated->driverimage =$driverimage;

        if($donated->save())
        return response()->json('done');
        else
        return response()->json('sorry',500);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TaxiData  $taxiData
     * @return \Illuminate\Http\Response
     */
    public function show(TaxiData $taxiData)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TaxiData  $taxiData
     * @return \Illuminate\Http\Response
     */
    public function edit(TaxiData $taxiData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TaxiData  $taxiData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TaxiData $taxiData)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TaxiData  $taxiData
     * @return \Illuminate\Http\Response
     */
    public function destroy(TaxiData $taxiData)
    {
        //
    }
}
