<?php

namespace App\Http\Controllers;

use App\Models\example;
use App\Models\example_attachments;
use App\Models\examples_details;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ExamplesDetailsController extends Controller
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\examples_details  $examples_details
     * @return \Illuminate\Http\Response
     */
    public function show(examples_details $examples_details)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\examples_details  $examples_details
     * @return \Illuminate\Http\Response
     */
    public function edit($id)

    {
        $example = example::where('id',$id)->first();
        $details  = examples_Details::where('id_example',$id)->get();
        $attachments  = example_attachments::where('example_id',$id)->get();

        return view('example.details_example',compact('example','details','attachments'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\examples_details  $examples_details
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, examples_details $examples_details)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\examples_details  $examples_details
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $example = example_attachments::findOrFail($request->id_file);
        $example->delete();
        Storage::disk('public_uploads')->delete($request->example_number.'/'.$request->file_name);
        session()->flash('delete', 'تم حذف المرفق بنجاح');
        return back();
    }

    public function get_file($example_number,$file_name)
    {
        $st="Attachments";
        $pathToFile = public_path($st.'/'.$example_number.'/'.$file_name);
        return response()->download($pathToFile);
    }

    public function open_file($example_number,$file_name)
    {
        $st="Attachments";
        $pathToFile = public_path($st.'/'.$example_number.'/'.$file_name);
        return response()->file($pathToFile);
    }




}
