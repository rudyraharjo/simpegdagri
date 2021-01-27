<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class JabatanTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1
        \App\Models\Jabatan::create([
            'name' => 'Menteri',
        ]);

        // 2
        \App\Models\Jabatan::create([
            'name' => 'Sekretaris Jenderal',
        ]);

        // 3
        \App\Models\Jabatan::create([
            'name' => 'Inspektur Jenderal',
        ]);

        // 4
        \App\Models\Jabatan::create([
            'name' => 'Direktur Jenderal',
        ]);

        // 5
        \App\Models\Jabatan::create([
            'name' => 'Kepala Badan',
        ]);

        // 6
        \App\Models\Jabatan::create([
            'name' => 'Staf Ahli',
        ]);
    }
}
