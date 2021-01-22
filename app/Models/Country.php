<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'country';

    public $timestamps = false;

    protected $primaryKey = 'country_id';
    
    public function region(){
        
        return $this->hasMany(Region::class, 'region_country', 'country_id');
        
    }
}
