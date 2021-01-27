<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class KementerianTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Kementerian::create([
            'name'          => 'Kementerian Dalam Negeri Republik Indonesia',
            'description'   => 'Kementerian Dalam Negeri Republik Indonesia berdasarkan Permendagri No. 37',
            'date_establishment' => '1945-08-19',
            'legal_basis_establishment' => 'Undang-Undang Dasar Negara Republik Indonesia Tahun 1945',
            'sector'    => 'Pemerintahan dalam negeri',
            'employee'  => '4938',
            'address'   => 'Jalan Medan Merdeka Utara No. 7 Jakarta Pusat 10110 DKI Jakarta, Indonesia',
            'website'   => 'https://www.kemendagri.go.id/'
        ]);
    }
}
