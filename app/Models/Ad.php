<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ad extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'ads';

    public $timestamps = false;
    
    public function client(){
        
        $this->belongsTo(Client::class, 'client_id');
        
    }
}
