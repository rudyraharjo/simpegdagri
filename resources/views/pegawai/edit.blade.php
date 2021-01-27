@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Detail {{ __('Pegawai') }}</div>

                <div class="card-body">

                    <form method="post">
                        @csrf
                        @if ($errors->any())
                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                <span class="sr-only">Close</span>
                            </button>
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        <input type="hidden" name="f_id" value="{{$user->id}}">
                        <div class="form-group">
                            <label for="exampleFormControlInput1">NIP</label>
                            <input type="text" class="form-control" id="f_nip" name="f_nip" placeholder="NIP" value="{{ $user->nip }}">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Nama Lengkap</label>
                            <input type="text" class="form-control" id="f_fullname" name="f_fullname" placeholder="Nama Lengkap" value="{{ $user->fullname }}">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">No Telpon</label>
                            <input type="text" class="form-control" id="f_telp" name="f_telp" placeholder="No Telpon" value="{{ $user->telp }}">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Jabatan</label>
                            <select class="form-control" id="f_jabatan" name="f_jabatan">
                                @foreach($jabatan as $value)

                                <option value="{{ $value->id }}" {{ $user->jabatan_id == $value->id ? 'selected' : '' }}>{{ $value->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="exampleFormControlSelect1">Unit Kerja</label>
                                <select class="form-control" id="f_unitkerja" name="f_unitkerja">
                                    @foreach($unitkerja as $value)
                                    <option value="{{ $value->id }}" {{ $user->unitkerja_id == $value->id ? 'selected' : '' }}>{{ $value->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col">
                                <label for="exampleFormControlSelect1">Lembaga</label>
                                <select class="form-control" id="f_lembaga" name="f_lembaga">
                                    @foreach($lembaga as $value)
                                    <option value="{{ $value->id }}" {{ $user->lembaga_id == $value->id ? 'selected' : '' }}>{{ $value->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Alamat</label>
                            <textarea class="form-control" id="f_address" name="f_address" rows="3">{{ $user->address }}</textarea>
                        </div>
                        <div class="form-group text-right">
                            <a href="{{ url('/pegawai') }}" class="btn btn-default mb-2">Cancel</a>
                            <button type="submit" class="btn btn-primary mb-2">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection