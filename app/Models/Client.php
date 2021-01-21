<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'client';

    public $timestamps = false;
    
    public function ad(){
        
        return $this->hasOne(Ad::class, 'client_id', 'client_id');
        
    }
    
    public function business(){
        
        return $this->belongsTo(Business::class, 'client_business', 'business_id');
        
    }
    
    public function business2(){
        
        return $this->belongsTo(Business2::class, 'client_business_2', 'business_2_id');
        
    }
    
    public function region(){
        
        return $this->belongsTo(Region::class, 'client_region', 'region_id');
        
    }
    
    public function city(){
        
        return $this->belongsTo(City::class, 'client_city', 'city_id');
        
    }
    
    public function favorite(){
        
        return $this->hasMany(Favorite::class, 'client_id', 'client_id');
        
    }
}
