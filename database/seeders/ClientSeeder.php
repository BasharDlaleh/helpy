<?php

namespace Database\Seeders;

use App\Models\Business2;
use App\Models\Client;
use App\Models\Country;
use App\Models\Region;
use Illuminate\Database\Seeder;

class ClientSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {        
        Business2::paginate(10)
        ->each(function ($business2){
        
            Client::factory()->count(3)->create([
                'client_business_2' => $business2->business_2_id,
                'client_business' => $business2->business_1
            ]
            );

    });
    }

}
