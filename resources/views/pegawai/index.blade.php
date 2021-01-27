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
                                    <th style="width: 50px">NIP</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>Jabatan</th>
                                    <th>Unit Kerja</th>
                                    <th>Lembaga</th>
                                    @if(auth()->user()->can('Update Lembaga') || auth()->user()->can('Delete Lembaga'))
                                    <th style="width: 150px">Aksi</th>
                                    @endif
                                </tr>
                            </thead>
                            <tbody>
                                @php

                                $i = 1
                                @endphp
                                @foreach($users as $user => $value)

                                @php

                                $email = isset($users[$user]["hasUser"]["email"]) ? $users[$user]["hasUser"]["email"] : "-";
                                $jabatan = isset($users[$user]["hasJabatan"]["name"]) ? $users[$user]["hasJabatan"]["name"] : "-";
                                $UnitKerja = isset($users[$user]["hasUnitKerja"]["name"]) ? $users[$user]["hasUnitKerja"]["name"] : "-";
                                $lembaga = isset($users[$user]["hasLembaga"]["name"]) ? $users[$user]["hasLembaga"]["name"] : "-";
                                @endphp
                                <tr>
                                    <td style="width: 100px;">{{ $value->nip}}</td>
                                    <td>{{ $value->fullname }}</td>
                                    <td>{{ $email }}</td>
                                    <td>{{ $jabatan }}</td>
                                    <td>{{ $UnitKerja }}</td>
                                    <td>{{ $lembaga }}</td>
                                    @if(auth()->user()->can('Update Lembaga') || auth()->user()->can('Delete Lembaga'))
                                    <td>

                                        <a href="{{ url('/pegawai/'.$value->id.'/edit') }}" class="text-sm text-gray-700 underline">Edit</a> | <a href="{{ url('/pegawai/'.$value->id.'/delete') }}" class="text-sm text-gray-700 underline">Delete</a>
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