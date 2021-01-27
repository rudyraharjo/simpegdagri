<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $all_users_with_all_their_roles = User::with('roles')->get();

        //dd($all_users_with_all_their_roles[0]['roles']);

        $fetchUsers = User::with('hasOnePegawai')->where('id', '!=', 1)->get();

        return view('home', [
            'users' => $fetchUsers
        ]);
    }
}
