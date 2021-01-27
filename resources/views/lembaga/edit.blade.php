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
                        <input type="hidden" name="f_id" value="{{$lembaga->id}}">
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Lembaga</label>
                            <input type="text" class="form-control" id="f_lembaga" name="f_lembaga" placeholder="Lembaga" value="{{ $lembaga->name }}">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Ketua</label>
                            <select class="form-control" id="f_ketua" name="f_ketua">
                                @foreach($pegawai as $value)

                                <option value="{{ $value->id }}" {{ $lembaga->pegawai_id == $value->id ? 'selected' : '0' }}>{{ $value->fullname }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group text-right">
                            <a href="{{ url('/lembaga') }}" class="btn btn-default mb-2">Cancel</a>
                            <button type="submit" class="btn btn-primary mb-2">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection