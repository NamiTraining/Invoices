<?php

use App\Http\Controllers\CustomersReportController;
use App\Http\Controllers\ExampleAttachmentsController;
use App\Http\Controllers\ExampleController;
use App\Http\Controllers\ExampleReportController;
use App\Http\Controllers\ExamplesDetailsController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SectionsController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

//Route::get('/{page}', 'AdminController@index');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::resource('example', ExampleController::class);
Route::resource('sections', sectionsController::class);
Route::resource('products', ProductsController::class);

Route::resource('ExampleAttachments', ExampleAttachmentsController::class);


Route::get('section/{id}', [ExampleController::class, 'getproducts']);
Route::get('ExamplesDetails/{id}', [ExamplesDetailsController::class, 'edit']);



Route::get('download/{example_number}/{file_name}', [ExamplesDetailsController::class, 'get_file']);

Route::get('View_file/{example_number}/{file_name}', [ExamplesDetailsController::class, 'open_file']);

Route::any('delete_file', [ExamplesDetailsController::class, 'destroy'])->name('delete_file');

Route::get('/edit_example/{id}', [ExampleController::class, 'edit']);

Route::get('/Status_show/{id}', [ExampleController::class, 'show'])->name('Status_show');

Route::post('/Status_Update/{id}', [ExampleController::class, 'Status_Update'])->name('Status_Update');

Route::get('example_paid' , [ExampleController::class , 'example_paid']);

Route::get('example_Unpaid' , [ExampleController::class , 'example_Unpaid']);

Route::get('example_Partial' , [ExampleController::class , 'example_Partial']);

Route::group(['middleware' => ['auth']], function() {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
});


Route::get('example_report' , [ExampleReportController::class , 'index']);

Route::post('Search_example' , [ExampleReportController::class , 'Search_example']);

//Route::get('customers_report', 'Customers_Report@index')->name("customers_report");
//Route::post('Search_customers', 'Customers_Report@Search_customers');
Route::post('Search_customers' , [CustomersReportController::class , 'Search_customers']);


Route::get('customers_report' , [CustomersReportController::class , 'index'])->name("customers_report");

Route::get('MarkAsRead_all' , [ExampleController::class , 'MarkAsRead_all'])->name("MarkAsRead_all");




Route:: get ('/{page}',[AdminController::class,'index']);
