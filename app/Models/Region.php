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
        
        $this->hasMany(City::class, 'city_region');
        
    }
    
    public function client(){
        
        $this->hasMany(Client::class, 'client_region');
        
    }
}
