<?php

namespace App\Http\Controllers;

use App\hotel;
use Illuminate\Http\Request;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hotelData = hotel::all();
        return response()->json($hotelData);

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
            'hotelname' => 'required',
            'hotelmyanmarname' => 'required',
            'price' => 'required',
            'opentime' => 'required',
            'ratings' => 'required',
            'phone' => 'required',
            'ratingsint' => 'required',
            'descrition' => 'required',
            'parking' => 'required',
            'swimming' => 'required',
            'wifi' => 'required',
            'food' => 'required',
            'hotelimage' => 'mimes:jpeg,png,jpg|max:5000',
            'galleryoneimage' => 'mimes:jpeg,png,jpg|max:5000',
            'gallerytwoimage' => 'mimes:jpeg,png,jpg|max:5000',
            'gallerythreeimage' => 'mimes:jpeg,png,jpg|max:5000',
        ]);


        if($request->hasfile('hotelimage'))
        {
           $image = $request->file('hotelimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $hotelimage = '/image/'.$name;
        }
        if($request->hasfile('galleryoneimage'))
        {
           $image = $request->file('galleryoneimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $galleryoneimage = '/image/'.$name;
        }
        if($request->hasfile('gallerytwoimage'))
        {
           $image = $request->file('gallerytwoimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $gallerytwoimage = '/image/'.$name;
        }
        if($request->hasfile('gallerythreeimage'))
        {
           $image = $request->file('gallerythreeimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $gallerythreeimage = '/image/'.$name;
        }
        $donated= new hotel();
        $donated->hotelname =$request->hotelname;
        $donated->hotelmyanmarname =$request->hotelmyanmarname;
        $donated->price =$request->price;
        $donated->opentime =$request->opentime;
        $donated->phone =$request->phone;
        $donated->ratings =$request->ratings;
        $donated->ratingsint =$request->ratingsint;
        $donated->descrition =$request->descrition;
        $donated->parking =$request->parking;
        $donated->swimming =$request->swimming;
        $donated->wifi =$request->wifi;
        $donated->food =$request->food;
        $donated->status =$request->status;
        $donated->hotelimage =$hotelimage;
        $donated->galleryoneimage =$galleryoneimage;
        $donated->gallerytwoimage =$gallerytwoimage;
        $donated->gallerythreeimage =$gallerythreeimage;

        if($donated->save())
        return response()->json('done');
        else
        return response()->json('sorry',500);


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function edit(hotel $hotel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, hotel $hotel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function destroy(hotel $hotel)
    {
        //
    }
}
