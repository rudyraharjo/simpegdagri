<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pegawai extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'pegawai';

    public function hasUser()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function hasJabatan()
    {
        return $this->belongsTo(Jabatan::class, 'jabatan_id');
    }

    public function hasUnitKerja()
    {
        return $this->belongsTo(UnitKerja::class, 'unitkerja_id');
    }

    public function hasLembaga()
    {
        return $this->belongsTo(Lembaga::class, 'lembaga_id');
    }
}
