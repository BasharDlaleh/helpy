<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Client extends Model
{
    use HasFactory, HasApiTokens;

    protected $guarded = [];

    protected $table = 'client';

    public $timestamps = false;

    protected $primaryKey = 'client_id';

    protected $hidden = [
        'client_password', 'client_date_entry', 'client_admin_entry', 'client_deleted', 'client_validate', 'client_owner', 'client_note', 'client_date'
    ];
    
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

    public function getClientImageAttribute($value)
    {
        return '/storage/client/'.$value;
    }

    public function getClientGallery1Attribute($value)
    {
        return '/storage/client_gallery/'.$value;
    }

    public function getClientGallery_1Attribute($value)
    {
        return $this->getClientGallery1Attribute($value);
    }

    public function getClientGallery2Attribute($value)
    {
        return '/storage/client_gallery/'.$value;
    }

    public function getClientGallery_2Attribute($value)
    {
        return $this->getClientGallery2Attribute($value);
    }

    public function getClientGallery3Attribute($value)
    {
        return '/storage/client_gallery/'.$value;
    }

    public function getClientGallery_3Attribute($value)
    {
        return $this->getClientGallery3Attribute($value);
    }
}
