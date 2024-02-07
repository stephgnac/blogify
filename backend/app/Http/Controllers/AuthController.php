<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

use function PHPUnit\Framework\returnSelf;

class AuthController extends Controller
{
    //
    public function register(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:'],
            'password' => ['required', 'confirmed'],
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);


        Auth::login($user);

        return response([
            'user' => $user,
            'token' => $user->createToken('secret')->plainTextToken
        ]);

    }


    public function login(Request $request)
    {
        $attrs = $request->validate([

            'email' => ['required', 'string', 'email', 'max:255'],
            'password' => ['required'],
        ]);


        if(!Auth::attempt($attrs))
        {
            
        }
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);


        Auth::login($user);

        return response([
            'user' => $user,
            'token' => $user->createToken('secret')->plainTextToken
        ]);

    }
}
