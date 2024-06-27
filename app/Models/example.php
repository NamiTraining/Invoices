<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class example extends Model
{
    use SoftDeletes;

    protected $guarded = [];
    protected $table = 'example';

//    use HasFactory;
    protected $dates = ['deleted_at'];

    public function section()
    {
        return $this->belongsTo('App\Models\sections');
    }
}
