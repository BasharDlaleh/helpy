<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClientTemp extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'client_temp';

    public $timestamps = false;

    public function clientRegion(){
        
        return $this->belongsTo(Region::class, 'region', 'region_id');
        
    }
}
