<?php

namespace App\Http\Controllers;

use App\Models\example_attachments;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExampleAttachmentsController extends Controller
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
        $this->validate($request, [

            'file_name' => 'mimes:pdf,jpeg,png,jpg',

        ], [
            'file_name.mimes' => 'صيغة المرفق يجب ان تكون   pdf, jpeg , png , jpg',
        ]);

        $image = $request->file('file_name');
        $file_name = $image->getClientOriginalName();

        $attachments =  new example_attachments();
        $attachments->file_name = $file_name;
        $attachments->example_number = $request->example_number;
        $attachments->example_id = $request->example_id;
        $attachments->Created_by = Auth::user()->name ??'None' ;
        $attachments->save();

        // move pic
        $imageName = $request->file_name->getClientOriginalName();
        $request->file_name->move(public_path('Attachments/'. $request->invoice_number), $imageName);

        session()->flash('Add', 'تم اضافة المرفق بنجاح');
        return back();

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\example_attachments  $example_attachments
     * @return \Illuminate\Http\Response
     */
    public function show(example_attachments $example_attachments)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\example_attachments  $example_attachments
     * @return \Illuminate\Http\Response
     */
    public function edit(example_attachments $example_attachments)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\example_attachments  $example_attachments
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, example_attachments $example_attachments)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\example_attachments  $example_attachments
     * @return \Illuminate\Http\Response
     */
    public function destroy(example_attachments $example_attachments)
    {
        //
    }
}
