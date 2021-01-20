<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Registeration extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'registerations';

    public $timestamps = false;
}
