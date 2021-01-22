<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'report';

    public $timestamps = false;

    protected $primaryKey = 'report_id';
}
