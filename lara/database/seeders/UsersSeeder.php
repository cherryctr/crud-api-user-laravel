<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create('id_ID');
        $gender = $faker->randomElement(['male', 'female']);
        $birth_place = $faker->randomElement(['Bogor', 'Jakarta']);
    	for($i = 1; $i <= 500; $i++){

    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('users')->insert([
    			'name' => $faker->name($gender),
                'birth_place' => $birth_place,
    			'email' => preg_replace('/@example\..*/', '@gmail.com', $faker->unique()->safeEmail),
    			'password' => bcrypt('1234'),
    			'birth_date' =>$faker->date($format = 'Y-m-d', $max = 'now'),
                'gender' => $gender,
                'created_at' =>$faker->datetime('now'),
                'updated_at' => $faker->datetime('now'),

    		]);
        }
    }
}
