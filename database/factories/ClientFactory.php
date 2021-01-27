<?php

namespace Database\Factories;

use App\Models\Client;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class ClientFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Client::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $date = Carbon::create(2020, 1, 1, 0, 0, 0);
        
        $regionIDs = DB::table('region')->pluck('region_id');

        return [
            'client_name' => $this->faker->name,
            'client_address' => $this->faker->address,
            'client_mobile1' => $this->faker->phoneNumber,
            'client_visible' => rand(0,1),
            'client_star' => rand(0,1),
            'client_detail' => 'this is a random client detail text this is a random client detail text this is a random client detail text this is a random client detail text',
            'client_deleted' => rand(0,1),
            'client_date_entry' => $date->addDays(rand(1, 300))->format('Y-m-d H:i:s'),
            'client_date' => Carbon::now(),
            'client_region' => $this->faker->randomElement($regionIDs)
        ];
    }
}
