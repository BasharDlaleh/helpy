<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'favorite';

    public $timestamps = false;
    
    public function client(){
        
        $this->belongsTo(Client::class, 'client_id');
        
    }
}
