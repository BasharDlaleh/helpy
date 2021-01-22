<?php

namespace Database\Factories;

use App\Models\Client;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

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

        return [
            'client_name' => $this->faker->name,
            'client_address' => $this->faker->address,
            'client_mobile1' => $this->faker->phoneNumber,
            'client_image' => 'user.PNG',
            'client_visible' => rand(0,1),
            'client_star' => rand(0,1),
            'client_detail' => 'detail',
            'client_deleted' => rand(0,1),
            'client_date_entry' => $date->addDays(rand(1, 300))->format('Y-m-d H:i:s'),
            'client_date' => Carbon::now()
        ];
    }
}
