<?php

namespace App\Http\Controllers;

use App\Models\example;
use Illuminate\Http\Request;

class ExampleReportController extends Controller
{
    public function index(){

        return view('reports.example_report');

    }

    public function Search_example(Request $request){

        $rdio = $request->rdio;


        // في حالة البحث بنوع الفاتورة

        if ($rdio == 1) {


            // في حالة عدم تحديد تاريخ
            if ($request->type && $request->start_at =='' && $request->end_at =='') {

                $example = example::select('*')->where('Status','=',$request->type)->get();
                $type = $request->type;
                return view('reports.example_report',compact('type'))->withDetails($example);
            }

            // في حالة تحديد تاريخ استحقاق
            else {

                $start_at = date($request->start_at);
                $end_at = date($request->end_at);
                $type = $request->type;

                $example = example::whereBetween('example_Date',[$start_at,$end_at])->where('Status','=',$request->type)->get();
                return view('reports.example_report',compact('type','start_at','end_at'))->withDetails($example);

            }



        }

//====================================================================

// في البحث برقم الفاتورة
        else {

            $example = example::select('*')->where('example_number','=',$request->example_number)->get();
            return view('reports.example_report')->withDetails($example);

        }



    }

}
