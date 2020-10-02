<?php

namespace App\Http\Controllers;

use App\HistoryData;
use Illuminate\Http\Request;

class HistoryDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $historyData =HistoryData::all();
        return  response()->json($historyData);
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
            'descrition' => 'required',
            'historyimage' => 'mimes:jpeg,png,jpg|max:5000',
        ]);

        if($request->hasfile('historyimage'))
        {
           $image = $request->file('historyimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $historyimage = '/image/'.$name;
        }
        $donated= new HistoryData();
        $donated->descrition =$request->descrition;
        $donated->historyimage =$historyimage;
        if($donated->save())
        return response()->json('done');
        else
        return response()->json('sorry',500);



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\HistoryData  $historyData
     * @return \Illuminate\Http\Response
     */
    public function show(HistoryData $historyData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\HistoryData  $historyData
     * @return \Illuminate\Http\Response
     */
    public function edit(HistoryData $historyData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\HistoryData  $historyData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HistoryData $historyData)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\HistoryData  $historyData
     * @return \Illuminate\Http\Response
     */
    public function destroy(HistoryData $historyData)
    {
        //
    }
}
