<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClientTmp extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'client_tmp';

    public $timestamps = false;
}
