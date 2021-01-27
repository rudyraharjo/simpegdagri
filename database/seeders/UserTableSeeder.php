<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1
        \App\Models\User::create([
            // 'fullname' => 'Rudy Raharjo',
            'email' => 'rraharjo.rudy@dev.kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('super-admin');

        // UnitKerja - Sekretariat Jenderal
        // 2
        \App\Models\User::create([

            'email' => 'tito.karnavian@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Kementrian');

        // 3
        \App\Models\User::create([

            'email' => 'muhammad.hudori@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 4
        \App\Models\User::create([

            'email' => 'bahtiar@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 5
        \App\Models\User::create([

            'email' => 'safrizal@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 6
        \App\Models\User::create([

            'email' => 'akmal_m.piliang@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 7
        \App\Models\User::create([

            'email' => 'hari_nur_cahyam_urni@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 8
        \App\Models\User::create([
            'email' => 'yusharto_huntoyungo@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 9
        \App\Models\User::create([

            'email' => 'mochamad_ardian_noervianto@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 10
        \App\Models\User::create([

            'email' => 'zudan_arif_fakrulloh@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 11
        \App\Models\User::create([

            'email' => 'tumpak_haposan_simanjuntak@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 12
        \App\Models\User::create([

            'email' => 'agus.fatoni@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        //13
        \App\Models\User::create([

            'email' => 'teguh_setyabudi@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 14
        \App\Models\User::create([

            'email' => 'hadi_prabowo@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 15
        \App\Models\User::create([

            'email' => 'eko_prasetyanto_purnomo_putro@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 16
        \App\Models\User::create([

            'email' => 'suhajar_diantoro@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 17
        \App\Models\User::create([

            'email' => 'sugeng_hariyono@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 18
        \App\Models\User::create([

            'email' => 'hamdani@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 19
        \App\Models\User::create([

            'email' => 'yusharto@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 1');

        // 20
        \App\Models\User::create([

            'email' => 'bachril_bakri@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 21
        \App\Models\User::create([

            'email' => 'rahajeng_purwianti@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 22
        \App\Models\User::create([

            'email' => 'suprayitno@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 23
        \App\Models\User::create([

            'email' => 'raden_gani_muhamad@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 24
        \App\Models\User::create([

            'email' => 'hani_syopiar_rustam@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 25
        \App\Models\User::create([

            'email' => 'andi_ony_prihartono@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 26
        \App\Models\User::create([

            'email' => 'heru_tjahyono@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 27
        \App\Models\User::create([

            'email' => 'asmawa_tosepu@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 28
        \App\Models\User::create([

            'email' => 'benni.irwan@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 29
        \App\Models\User::create([

            'email' => 'heriyandi.roni@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // UnitKerja - INSPEKTORAT JENDERAL
        // 30
        \App\Models\User::create([

            'email' => 'muhammad.nur@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 31
        \App\Models\User::create([

            'email' => 'bachtiar.sinaga@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 32
        \App\Models\User::create([

            'email' => 'ucok.abdul@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // UnitKerja - Direktorat Jenderal Politik dan Pemerintahan Umum
        // 33
        \App\Models\User::create([

            'email' => 'Imran@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 34
        \App\Models\User::create([

            'email' => 'drajat.wisnu.setyawan@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // 35
        \App\Models\User::create([

            'email' => 'syarmadani@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 2');

        // ID = 36 role = eselon 3
        \App\Models\User::create([
            'email' => 'rudy.admin.eselon3@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 3');

        // ID = 37 Role = eselon 4
        \App\Models\User::create([
            'email' => 'rudy.admin.eselon4@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon 4');

        // ID = 38 Role = staff user
        \App\Models\User::create([
            'email' => 'rudy.admin.staff@kemendagri.go.id',
            'password' => bcrypt('secret'),
            'token' => sha1(time())
        ])->assignRole('Eselon Staff');
    }
}
