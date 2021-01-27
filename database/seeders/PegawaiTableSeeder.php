<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class PegawaiTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        // Menteri
        \App\Models\Pegawai::create([
            'user_id' => '2',
            'jabatan_id' => '1',
            'kementrian_id' => '1',
            'unitkerja_id' => '1',
            'nip'   => Str::random(12),
            'fullname' => 'Jenderal Polisi (Purn) Prof. Drs. H. Muhammad Tito Karnavian., M.A., Ph.D.',
            'telp'  => '0888881112',
            'address'   => 'Palembang, Sumatera Selatan'
        ]);

        // ===  Sekretaris Jenderal === //
        \App\Models\Pegawai::create([
            'user_id' => '3',
            'jabatan_id' => '2',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Ir. Muhammad Hudori, M.Si',
            'telp'  => '0888881321',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        //  === Under Sekretaris Jenderal === //

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '20',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '1',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Ir. Bachril Bakri, M.App.Sc',
            'telp'  => '(021) - 3450919',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '21',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '2',
            'nip'   => Str::random(12),
            'fullname' => 'Dra. Rahajeng Purwianti, M.Si',
            'telp'  => '(021) - 7942631',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '22',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '3',
            'nip'   => Str::random(12),
            'fullname' => 'Ir. Suprayitno, MA',
            'telp'  => '(021) - 3440402',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '23',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '4',
            'nip'   => Str::random(12),
            'fullname' => 'Raden Gani Muhamad SH.,MAP',
            'telp'  => '(021) - 3440082',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '24',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '5',
            'nip'   => Str::random(12),
            'fullname' => 'Hani Syopiar Rustam, SH',
            'telp'  => '(021) - 3459339',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '25',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '6',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Drs. Andi Ony Prihartono, M.Si',
            'telp'  => '(021) - 3459339',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '26',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '7',
            'nip'   => Str::random(12),
            'fullname' => 'Drs. H. Heru Tjahyono',
            'telp'  => '(021) - 3459339',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '27',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '8',
            'nip'   => Str::random(12),
            'fullname' => 'Asmawa Tosepu, AP. M.Si.',
            'telp'  => '(021) - 3811120, 3811068',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '28',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '9',
            'nip'   => Str::random(12),
            'fullname' => 'Drs. Benni Irwan, M.Si, MA',
            'telp'  => '(021) - 3811120, 3811068',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '29',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '2',
            'lembaga_id'    => '10',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Heriyandi Roni, M.Si',
            'telp'  => '(021) - 3811120, 3811068',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        //  === End Sekretaris Jenderal === //

        // === Inspektur Jenderal === //
        \App\Models\Pegawai::create([
            'user_id' => '11',
            'jabatan_id' => '3',
            'kementrian_id' => '1',
            'unitkerja_id' => '10',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Drs. Tumpak Haposan Simanjuntak, MA',
            'telp'  => '(021) - 3842602',
            'address'   => 'Jl. Medan Merdeka Timur No.8 Jakarta Pusat'
        ]);

        // === Under Inspektur Jenderal === //

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '30',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '10',
            'lembaga_id'    => '7',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Drs. Muhammad Nur, ME. CRGP',
            'telp'  => '(021) - 3450919',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '31',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '10',
            'lembaga_id'    => '8',
            'nip'   => Str::random(12),
            'fullname' => 'Bachtiar Sinaga, SE., MM',
            'telp'  => '(021) - 3450919',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // Kepala Badan
        \App\Models\Pegawai::create([
            'user_id' => '32',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '10',
            'lembaga_id'    => '9',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Ucok Abdul Rauf Damenta, Mag.rer.Pulp',
            'telp'  => '(021) - 3450919',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // === End Inspektur Jenderal === //

        // === Direktorat Jenderal - Politik dan Pemerintahan Umum === //
        \App\Models\Pegawai::create([
            'user_id' => '4',
            'jabatan_id' => '4',
            'kementrian_id' => '1',
            'unitkerja_id' => '3',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Drs. Bahtiar, M.Si',
            'telp'  => '(021) - 3842602',
            'address'   => 'Jl. Medan Merdeka Utara No.7, Jakarta Pusat'
        ]);

        // === Under Direktorat Jenderal - Politik dan Pemerintahan Umum === //

        \App\Models\Pegawai::create([
            'user_id' => '33',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '3',
            'lembaga_id'    => '11',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Drs. Imran, M.Si., M.A',
            'telp'  => '(021) -  3451941',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        \App\Models\Pegawai::create([
            'user_id' => '34',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '3',
            'lembaga_id'    => '12',
            'nip'   => Str::random(12),
            'fullname' => 'Drs. Drajat Wisnu Setyawan, M.M.',
            'telp'  => '(021) -  3451941',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        \App\Models\Pegawai::create([
            'user_id' => '35',
            'jabatan_id' => '5',
            'kementrian_id' => '1',
            'unitkerja_id' => '3',
            'lembaga_id'    => '13',
            'nip'   => Str::random(12),
            'fullname' => 'Drs. Syarmadani M.Si',
            'telp'  => '(021) - 34835163',
            'address'   => 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat'
        ]);

        // === End Direktorat Jenderal - Politik dan Pemerintahan Umum === //

        // Direktorat Jenderal
        \App\Models\Pegawai::create([
            'user_id' => '5',
            'jabatan_id' => '4',
            'kementrian_id' => '1',
            'unitkerja_id' => '3',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Drs. Safrizal, Z.A., M.Si',
            'telp'  => '(021) - 2300024',
            'address'   => 'Jl. Veteran No.7B, Jakarta Pusat'
        ]);

        // Direktorat Jenderal
        \App\Models\Pegawai::create([
            'user_id' => '6',
            'jabatan_id' => '4',
            'kementrian_id' => '1',
            'unitkerja_id' => '5',
            'nip'   => Str::random(12),
            'fullname' => 'Akmal M Piliang, M.Si',
            'telp'  => '(021) - 3450038 ext.2897',
            'address'   => 'Jl. Medan Merdeka Utara No.7, Jakarta Pusat'
        ]);

        // Direktorat Jenderal
        \App\Models\Pegawai::create([
            'user_id' => '7',
            'jabatan_id' => '4',
            'kementrian_id' => '1',
            'unitkerja_id' => '6',
            'nip'   => Str::random(12),
            'fullname' => 'Dr. Hari Nur Cahya Murni, M.Si',
            'telp'  => '(021) - 7942631',
            'address'   => 'Jl.Taman Makam Pahlawan No.20 Kalibata, Jakarta Selatan'
        ]);
    }
}
