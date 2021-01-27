<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UnitKerjaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        // kementerian_id = 1 , kementrian dalam negeri

        // 1
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Menteri',
        ]);

        // 2
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Sekretariat Jenderal',
        ]);

        // 3
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Politik dan Pemerintahan Umum',
        ]);

        // 4
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Bina Administrasi Kewilayahan',
        ]);

        // 5
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Otonomi Daerah',
        ]);

        // 6
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Bina Pembangunan Daerah',
        ]);

        // 7
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Bina Pemerintahan Desa',
        ]);

        // 8
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Bina Keuangan Daerah',
        ]);

        // 9
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Direktorat Jenderal Kependudukan dan Pencatatan Sipil',
        ]);

        // 10
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Inspektorat Jenderal',
        ]);

        // 11
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Badan Penelitian dan Pengembangan',
        ]);

        // 12
        \App\Models\UnitKerja::create([
            'kementerian_id'    => 1,
            'name' => 'Badan Pengembangan Sumber Daya Manusia',
        ]);
    }
}
