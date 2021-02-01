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

    protected $primaryKey = 'business_2_id';
    
    public function business(){
        
        return $this->belongsTo(Business::class, 'business_1', 'business_id');
        
    }
    
    public function client(){
        
        return $this->hasMany(Client::class, 'client_business_2', 'business_2_id');
        
    }

    public function getBusiness2ImageAttribute($value)
    {
        return '/storage/business2/'.$value;
    }

    public function getBusiness_2_ImageAttribute($value)
    {
        return $this->getBusiness2ImageAttribute($value);
    }
    
}
