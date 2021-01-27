<?php

namespace App\Http\Controllers;

use App\Models\Lembaga;
use App\Models\Pegawai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


class LembagaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $lembaga = Lembaga::with('hasUnitKerja', 'hasKepalaLembaga')->get();

        return view('lembaga.index', [

            'lembaga' => $lembaga
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
     * @param  \App\Models\Lembaga  $lembaga
     * @return \Illuminate\Http\Response
     */
    public function show(Lembaga $lembaga)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Lembaga  $lembaga
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $fetchLemabaga = Lembaga::where('id', $id)->first();

        $fetchUsers = Pegawai::with('hasUser', 'hasJabatan', 'hasUnitKerja', 'hasLembaga')
            ->where('user_id', '!=', 1)
            ->where('user_id', '!=', 2)
            ->where('unitkerja_id', $fetchLemabaga->unitkerja_id)
            ->get();
        //dd($fetchUsers);
        return view('lembaga.edit', [
            'lembaga' => $fetchLemabaga,
            'pegawai'   => $fetchUsers
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lembaga  $lembaga
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate(
            $request,
            [
                'f_lembaga' => 'required',
                'f_ketua' => 'required|numeric'
            ],
            [
                'f_lembaga.required' => 'Isian Lembaga wajib diisi.',
                'f_ketua.required' => 'Isian Ketua lembaga',
                'f_ketua.numeric' => 'Isian Ketua lembaga hanya boleh angka'
            ]
        );

        try {
            $update = Lembaga::where('id', $id)
                ->first();
            $update->name = $request->f_lembaga;
            $update->pegawai_id = $request->f_ketua;
            $update->save();

            Session::flash('message_success', 'Ubah data berhasil');
        } catch (\Exception $e) {
            Session::flash('destroy_success', 'Koneksi bermasalah, proses ubah dibatalkan, silahkan dicoba lagi.');
        }
        return redirect('/lembaga');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Lembaga  $lembaga
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lembaga $lembaga, $id)
    {
        try {
            $lembaga = Lembaga::where('id', $id)->first();

            if ($lembaga) {

                Lembaga::where('id', $id)->delete();
                // User::where('id', $user->user_id)->delete();
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
