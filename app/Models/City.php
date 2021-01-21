<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'city';

    public $timestamps = false;
    
    public function region(){
        
        return $this->belongsTo(Region::class, 'city_region', 'region_id');
        
    }
    
    public function client(){
        
        return $this->hasMany(Client::class, 'client_city', 'city_id');
        
    }
}
