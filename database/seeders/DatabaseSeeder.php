<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
        ClientSeeder::class,
        ]);
        
        DB::table('client')->update(['client_image' => 'client.PNG']);
        
        DB::table('client')->update(['client_gallery_1' => 'client_gallery1.jpg']);
        
        DB::table('client')->update(['client_gallery_2' => 'client_gallery2.jpg']);
        
        DB::table('client')->update(['client_gallery_3' => 'client_gallery3.jpg']);
        
        DB::table('business')->update(['business_image' => 'business.jpg']);
        
        DB::table('business_2')->update(['business_2_image' => 'business2.png']);
    
    }
}
