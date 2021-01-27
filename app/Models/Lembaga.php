<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Lembaga extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'lembaga';

    public function hasUnitKerja()
    {
        return $this->belongsTo(UnitKerja::class, 'unitkerja_id', 'id');
    }
    public function hasKepalaLembaga()
    {
        return $this->belongsTo(Pegawai::class, 'pegawai_id', 'id');
    }
}
