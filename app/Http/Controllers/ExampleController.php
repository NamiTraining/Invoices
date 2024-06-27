<?php

namespace App\Http\Controllers;

use App\Models\example;
use App\Models\example_attachments;
use App\Models\examples_details;
use App\Models\sections;
use App\Models\User;
use App\Notifications\Add_example;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Storage;
//use App\User;

class ExampleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $example = example::all();
return view('example.example', compact('example'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $sections = sections::all();
        return view('example.add_example', compact('sections'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        example::create([
            'example_number' => $request->example_number,
            'example_Date' => $request->example_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'Status' => 'غير مدفوعة',
            'Value_Status' => 2,
            'note' => $request->note,
        ]);
        $example_id = example::latest()->first()->id;
        examples_details::create([
            'id_example' => $example_id,
            'example_number' => $request->example_number,
            'product' => $request->product,
            'Section' => $request->Section,
            'Status' => 'غير مدفوعة',
            'Value_Status' => 2,
            'note' => $request->note,
            'user' => (Auth::user()->name ??'None'),
        ]);
        if ($request->hasFile('pic')) {

            $example_id = example::latest()->first()->id;
            $image = $request->file('pic');
            $file_name = $image->getClientOriginalName();
            $example_number = $request->example_number;

            $attachments = new example_attachments();
            $attachments->file_name = $file_name;
            $attachments->example_number = $example_number;
            $attachments->Created_by = Auth::user()->name ??'None';
            $attachments->example_id = $example_id;
            $attachments->save();

            // move pic
            $imageName = $request->pic->getClientOriginalName();
            $request->pic->move(public_path('Attachments/' . $example_number), $imageName);




            $user = User::get();

            $example = example::latest()->first();

            Notification::send($user, new \App\Notifications\Add_example($example));


            session()->flash('Add', 'تم اضافة الفاتورة بنجاح');
            return back();
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\example  $example
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $example = example::where('id', $id)->first();
        return view('example.status_update', compact('example'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\example  $example
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $example = example::where('id', $id)->first();
        $sections = sections::all();
        return view('example.edit_example', compact('sections', 'example'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\example  $example
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $example = example::findOrFail($request->example_id);
        $example->update([
            'example_number' => $request->example_number,
            'example_Date' => $request->example_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'note' => $request->note,
        ]);

        session()->flash('edit', 'تم تعديل الفاتورة بنجاح');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\example  $example
      * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->example_id;
        $example = example::where('id', $id)->first();
        $Details = example_attachments::where('example_id', $id)->first();

        $id_page =$request->id_page;


        if (!$id_page==2) {

            if (!empty($Details->example_number)) {

                Storage::disk('public_uploads')->deleteDirectory($Details->example_number);
            }

            $example->forceDelete();
            session()->flash('delete_example');
            return redirect('/example');

        }
        else {
            $example->delete();
            session()->flash('archive_example');
            return redirect('/Archive');
        }

    }

    public function getproducts ($id)
    {
        $products = DB::table("products")->where("section_id", $id)->pluck("Product_name", "id");
        return $products;
    }


    public function Status_Update($id, Request $request)
    {
        $example = example::findOrFail($id);

        if ($request->Status === 'مدفوعة') {

            $example->update([
                'Value_Status' => 1,
                'Status' => $request->Status,
                'Payment_Date' => $request->Payment_Date,
            ]);

            examples_details::create([
                'id_example' => $request->example_id,
                'example_number' => $request->example_number,
                'product' => $request->product,
                'Section' => $request->Section,
                'Status' => $request->Status,
                'Value_Status' => 1,
                'note' => $request->note,
                'Payment_Date' => $request->Payment_Date,
                'user' => (Auth::user()->name ??'None'),
            ]);
        }

        else {
            $example->update([
                'Value_Status' => 3,
                'Status' => $request->Status,
                'Payment_Date' => $request->Payment_Date,
            ]);
            examples_details::create([
                'id_example' => $request->example_id,
                'example_number' => $request->example_number,
                'product' => $request->product,
                'Section' => $request->Section,
                'Status' => $request->Status,
                'Value_Status' => 3,
                'note' => $request->note,
                'Payment_Date' => $request->Payment_Date,
                'user' => (Auth::user()->name ??'None'),
            ]);
        }
        session()->flash('Status_Update');
        return redirect('/example');

    }

    public function example_Paid()
    {
        $example = example::where('Value_Status', 1)->get();
        return view('example.example_paid',compact('example'));
    }

    public function example_UnPaid()
    {
        $example = example::where('Value_Status',2)->get();
        return view('example.example_unPaid',compact('example'));
    }

    public function example_Partial()
    {
        $example = example::where('Value_Status',3)->get();
        return view('example.example_Partial',compact('example'));
    }

    public function MarkAsRead_all (Request $request)
    {

        $userUnreadNotification= auth()->user()->unreadNotifications;

        if($userUnreadNotification) {
            $userUnreadNotification->markAsRead();
            return back();
        }


    }


}


