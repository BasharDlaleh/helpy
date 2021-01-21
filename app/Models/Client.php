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
        
        $this->hasOne(Ad::class, 'client_id');
        
    }
    
    public function business(){
        
        $this->belongsTo(Business::class, 'client_business');
        
    }
    
    public function business2(){
        
        $this->belongsTo(Business2::class, 'client_business_2');
        
    }
    
    public function region(){
        
        $this->belongsTo(Region::class, 'client_region');
        
    }
    
    public function city(){
        
        $this->belongsTo(City::class, 'client_city');
        
    }
}
