<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call([
            RolePermissionTableSeeder::class,
            JabatanTableSeeder::class,
            KementerianTableSeeder::class,
            UnitKerjaTableSeeder::class,
            LembagaTableSeeder::class,
            UserTableSeeder::class,
            PegawaiTableSeeder::class
        ]);
    }
}
