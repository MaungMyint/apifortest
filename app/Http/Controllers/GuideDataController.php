<?php

namespace App\Http\Controllers;

use App\GuideData;
use Illuminate\Http\Request;

class GuideDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $guideData =GuideData::all();
        return response()->json($guideData);
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
            'bloggername' => 'required',
            'bloggeraddress' => 'required',
            'bloggeraddresscity' => 'required',
            'bloggerphone' => 'required',
            'descrition' => 'required',
            'bloggeremail' => 'required',
            'myanmarlanguage' => 'required',
            'englishlanguage' => 'required',
            'chinselanguage' => 'required',
            'janpanselanguage' => 'required',
            'point' => 'required',
            'bloggerimage' => 'mimes:jpeg,png,jpg|max:5000',
            ]);

            if($request->hasfile('bloggerimage'))
            {
               $image = $request->file('bloggerimage');
               $name = $image->getClientOriginalName();
               $image ->move(public_path().'/image/',$name);
               $bloggerimage = '/image/'.$name;
            }

            $donated= new GuideData();
            $donated->bloggername =$request->bloggername;
            $donated->bloggeraddress =$request->bloggeraddress;
            $donated->bloggeraddresscity =$request->bloggeraddresscity;
            $donated->bloggerphone =$request->bloggerphone;
            $donated->descrition =$request->descrition;
            $donated->bloggeremail =$request->bloggeremail;
            $donated->myanmarlanguage =$request->myanmarlanguage;
            $donated->englishlanguage =$request->englishlanguage;
            $donated->chinselanguage =$request->chinselanguage;
            $donated->janpanselanguage =$request->janpanselanguage;
            $donated->point =$request->point;
            $donated->bloggerimage =$bloggerimage;
            if($donated->save())
            return response()->json('done');
            else
            return response()->json('sorry',500);



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\GuideData  $guideData
     * @return \Illuminate\Http\Response
     */
    public function show(GuideData $guideData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GuideData  $guideData
     * @return \Illuminate\Http\Response
     */
    public function edit(GuideData $guideData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GuideData  $guideData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GuideData $guideData)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GuideData  $guideData
     * @return \Illuminate\Http\Response
     */
    public function destroy(GuideData $guideData)
    {
        //
    }
}
