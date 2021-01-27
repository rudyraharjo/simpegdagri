@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">List {{ __('Pegawai') }}</div>

                <div class="card-body">
                    @if (Session::has('message_success'))
                    <div class="alert alert-success" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        {{ Session::get('message_success') }}
                    </div>
                    @endif

                    @if (Session::has('destroy_success'))
                    <div class="alert alert-danger" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        {{ Session::get('destroy_success') }}
                    </div>
                    @endif

                    <div class="table-responsive-md">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Unit Kerja</th>
                                    <th>Lembaga</th>
                                    <th>Ketua</th>
                                    @if(auth()->user()->can('Update Lembaga') || auth()->user()->can('Delete Lembaga'))
                                    <th>Aksi</th>
                                    @endif
                                </tr>
                            </thead>
                            <tbody>
                                @php

                                $i = 1
                                @endphp
                                @foreach($lembaga as $key => $value)
                                @php
                                $unitKerja = isset($lembaga[$key]["hasUnitKerja"]["name"]) ? $lembaga[$key]["hasUnitKerja"]["name"] : "-";
                                $ketua = isset($lembaga[$key]["hasKepalaLembaga"]["fullname"]) ? $lembaga[$key]["hasKepalaLembaga"]["fullname"] : "-";
                                @endphp
                                <tr>
                                    <td>{{ $i}}</td>
                                    <td>{{ $unitKerja }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ $ketua }}</td>
                                    @if(auth()->user()->can('Update Lembaga') || auth()->user()->can('Delete Lembaga'))
                                    <td>

                                        <a href="{{ url('/lembaga/'.$value->id.'/edit') }}" class="text-sm text-gray-700 underline">Edit</a> | <a href="{{ url('/lembaga/'.$value->id.'/delete') }}" class="text-sm text-gray-700 underline">Delete</a>
                                    </td>
                                    @endif
                                </tr>
                                @php
                                $i++
                                @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection