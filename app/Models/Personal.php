<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'personal';

    public $timestamps = false;

    protected $primaryKey = 'personal_id';
}
