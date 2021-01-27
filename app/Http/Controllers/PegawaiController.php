<?php

namespace App\Http\Controllers;

use App\Models\Jabatan;
use App\Models\Lembaga;
use App\Models\Pegawai;
use App\Models\UnitKerja;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PegawaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$fetchUsers = User::with('hasOnePegawai')->where('id', '!=', 1)->get();

        $fetchUsers = Pegawai::with('hasUser', 'hasJabatan', 'hasUnitKerja', 'hasLembaga')
            ->where('user_id', '!=', 1)
            ->where('user_id', '!=', 2)
            ->get();

        //dd($fetchUsers);
        return view('pegawai.index', [
            'users' => $fetchUsers
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function show(Pegawai $pegawai)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //$user = User::with('defaultAddress')->where('id', $id)->first();
        $fetchUsers = Pegawai::with('hasUser', 'hasJabatan', 'hasUnitKerja', 'hasLembaga')
            ->where('id', $id)
            ->where('user_id', '!=', 1)
            ->where('user_id', '!=', 2)
            ->first();
        $fetchJabatan = Jabatan::where('id', '!=', 1)->get();
        $fetchUnitKerja = UnitKerja::where('id', '!=', 1)->get();
        $fetchLemabaga = Lembaga::get();

        return view('pegawai.edit', [
            'user' => $fetchUsers,
            'jabatan' => $fetchJabatan,
            'unitkerja' => $fetchUnitKerja,
            'lembaga' => $fetchLemabaga
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $this->validate(
            $request,
            [
                'f_nip' => 'required',
                'f_fullname' => 'required',
                'f_telp' => 'required',
                'f_jabatan' => 'required',
                'f_unitkerja' => 'required',
                'f_lembaga' => 'required',
            ],
            [
                'f_nip.required' => 'Isian NIP wajib diisi',
                'f_fullname.required' => 'Isian Nama Lengkap wajib diisi',
                'f_telp.required' => 'Isian Telp wajib diisi',
                'f_jabatan.required' => 'Isian Jabatan wajib diisi',
                'f_unitkerja.required' => 'Isian Unit Kerja wajib diisi',
                'f_lembaga.required' => 'Isian Lembaga wajib diisi.'
            ]
        );
        try {
            $update = Pegawai::where('id', $id)
                ->where('user_id', '!=', 1)
                ->where('user_id', '!=', 2)
                ->first();
            $update->jabatan_id = $request->f_jabatan;
            $update->unitkerja_id = $request->f_unitkerja;
            $update->lembaga_id = $request->f_lembaga;
            $update->nip    = $request->f_nip;
            $update->telp = $request->f_telp;
            $update->address = $request->f_address;
            $update->save();

            Session::flash('message_success', 'Ubah data berhasil');
        } catch (\Exception $e) {
            Session::flash('destroy_success', 'Koneksi bermasalah, proses ubah dibatalkan, silahkan dicoba lagi.');
        }
        return redirect('/pegawai');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pegawai $request, $id)
    {
        //dd($id);
        try {
            $user = Pegawai::where('id', $id)->first();

            if ($user) {

                Pegawai::where('id', $id)->delete();
                User::where('id', $user->user_id)->delete();
                Session::flash('message_success', 'Hapus data berhasil');
            } else {
                Session::flash('destroy_success', 'terjadi masalah, proses hapus dibatalkan, silahkan dicoba lagi.');
            }
        } catch (\Exception $e) {
            Session::flash('destroy_success', 'Koneksi bermasalah, proses hapus dibatalkan, silahkan dicoba lagi.');
        }
        return redirect('/pegawai');
    }
}
