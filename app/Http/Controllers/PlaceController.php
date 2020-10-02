<?php

namespace App\Http\Controllers;

use App\Place;
use Illuminate\Http\Request;

class PlaceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $place = Place::all();
        return response()->json($place);
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
            'placeimage' => 'mimes:jpeg,png,jpg|max:5000',
            'placeimageone' => 'mimes:jpeg,png,jpg|max:5000',
            'placeimagetwo' => 'mimes:jpeg,png,jpg|max:5000',
            'placeimagethree' => 'mimes:jpeg,png,jpg|max:5000',
            'placename' => 'required',
            'placeaddress' => 'required',
            'placecity' => 'required',
            'nearby' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'descrition' => 'required',
        ]);
        if($request->hasfile('placeimage'))
        {
           $image = $request->file('placeimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $placeimage = '/image/'.$name;
        }
        if($request->hasfile('placeimageone'))
        {
           $image = $request->file('placeimageone');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $placeimageone = '/image/'.$name;
        }
        if($request->hasfile('placeimagetwo'))
        {
           $image = $request->file('placeimagetwo');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $placeimagetwo = '/image/'.$name;
        }
        if($request->hasfile('placeimagethree'))
        {
           $image = $request->file('placeimagethree');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $placeimagethree = '/image/'.$name;
        }
        $donated= new Place();
        $donated->placename =$request->placename;
        $donated->placeaddress =$request->placeaddress;
        $donated->placecity =$request->placecity;
        $donated->nearby =$request->nearby;
        $donated->latitude =$request->latitude;
        $donated->longitude =$request->longitude;
        $donated->descrition =$request->descrition;
        $donated->placeimage =$request->placeimage;
        $donated->placeimageone =$request->placeimageone;
        $donated->placeimagetwo =$request->placeimagetwo;
        $donated->placeimagethree =$request->placeimagethree;

        if($donated->save())
        return response()->json('done');
        else
        return response()->json('sorry',500);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Place  $place
     * @return \Illuminate\Http\Response
     */
    public function show(Place $place)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Place  $place
     * @return \Illuminate\Http\Response
     */
    public function edit(Place $place)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Place  $place
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Place $place)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Place  $place
     * @return \Illuminate\Http\Response
     */
    public function destroy(Place $place)
    {
        //
    }
}
