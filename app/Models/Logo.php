<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Logo extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'logo';

    public $timestamps = false;

    protected $primaryKey = 'logo_id';
}
