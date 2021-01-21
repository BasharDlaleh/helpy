<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'region';

    public $timestamps = false;
    
    public function city(){
        
        return $this->hasMany(City::class, 'city_region', 'region_id');
        
    }
    
    public function client(){
        
        return $this->hasMany(Client::class, 'client_region', 'region_id');
        
    }
    
    public function country(){
        
        return $this->belongsTo(Country::class, 'region_country', 'country_id');
        
    }
}
