<?php

namespace Database\Seeders;

use App\Models\Ad;
use Illuminate\Database\Seeder;

class AdsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Ad::create(['client_id' => 5, 'ads_title' => 'test ad', 'ads_visible' => 1, 'ads_deleted' => 0, 'ads_image' => 'ad.PNG']);
    }
}
