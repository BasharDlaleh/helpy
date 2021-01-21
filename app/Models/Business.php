<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Business extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'business';

    public $timestamps = false;
    
    public function business2(){
        
        return $this->hasMany(Business2::class, 'business_1', 'business_id');
        
    }
    
    public function client(){
        
        return $this->hasMany(Client::class, 'client_business', 'business_id');
        
    }
}
