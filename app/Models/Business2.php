<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Business2 extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'business_2';

    public $timestamps = false;
    
    public function business(){
        
        $this->belongsTo(Business::class, 'business_1');
        
    }
    
    public function client(){
        
        $this->hasMany(Client::class, 'client_business_2');
        
    }
}
