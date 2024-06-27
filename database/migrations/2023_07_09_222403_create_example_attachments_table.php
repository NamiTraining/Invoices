<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('example_attachments', function (Blueprint $table) {
            $table->id();
            $table->string('file_name', 999);
            $table->string('example_number', 50);
            $table->string('Created_by', 999);
            $table->unsignedBigInteger('example_id')->nullable();
            $table->foreign('example_id')->references('id')->on('examples')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('example_attachments');
    }
};
