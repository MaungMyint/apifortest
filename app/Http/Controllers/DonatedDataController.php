<?php

namespace App\Http\Controllers;

use App\DonatedData;
use Illuminate\Http\Request;

class DonatedDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        // $products = auth()->user()->donateds;

        // return response()->json(  $products );

         $dontateData =DonatedData::all();
        return  response()->json($dontateData);
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
            'accountname' => 'required',
            'memberphone' => 'required',
            'membername' => 'required',
            'foundationname' => 'required',
            'descrition' => 'required',
            'accountimage' => 'mimes:jpeg,png,jpg|max:5000',
            'foundationlogo' => 'mimes:jpeg,png,jpg|max:5000',
        ]);

        if($request->hasfile('accountimage'))
        {
           $image = $request->file('accountimage');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $photoimage = '/image/'.$name;
        }

        if($request->hasfile('foundationlogo'))
        {
           $image = $request->file('foundationlogo');
           $name = $image->getClientOriginalName();
           $image ->move(public_path().'/image/',$name);
           $photologo = '/image/'.$name;
        }
        $donated= new DonatedData();
        $donated->accountname =$request->accountname;
        $donated->memberphone =$request->memberphone;
        $donated->membername =$request->membername;
        $donated->foundationname =$request->foundationname;
        $donated->descrition =$request->descrition;
        $donated->accountimage =$photoimage;
        $donated->foundationlogo =$photologo;

        if($donated->save())
        return response()->json('done');
        else
        return response()->json('sorry',500);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DonatedData  $donatedData
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $product = auth()->user()->donateds()->find($id);

        if (!$product) {
            return response()->json('sorry', 400);
        }
        return response()->json( [$product->toArray()] , 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DonatedData  $donatedData
     * @return \Illuminate\Http\Response
     */
    public function edit(DonatedData $donatedData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DonatedData  $donatedData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DonatedData $donatedData)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DonatedData  $donatedData
     * @return \Illuminate\Http\Response
     */
    public function destroy(DonatedData $donatedData)
    {
        //
    }
}
