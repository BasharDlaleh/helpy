<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Mail\NewClient;
use App\Models\Client;
use App\Models\ClientTemp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'personal_name' => 'required|string',
            'region' => 'required',
            'tel' => 'required'
        ]);

        $tempClient = ClientTemp::create([
            'name' => $request->name,
            'personal_name' => $request->personal_name,
            'region' => $request->region,
            'tel' => $request->tel
        ]);

        Mail::to('admin@gmail.com')->send(new NewClient($tempClient->load('clientRegion')));

        return response()->json(['message' => 'success']);
    }

    public function login(Request $request)
    {
        $request->validate([
            'phone' => 'required',
            'password' => 'required',
            //'device_name' => 'required',
        ]);

        $user = Client::where('client_mobile1', $request->phone)->first();

        if (! $user || ! Hash::check($request->password , $user->client_password)) {
            throw ValidationException ::withMessages([
                'password' => ['The provided credentials are incorrect.'],
            ]);
        }

        $authToken = $user->createToken('auth-token')->plainTextToken;

        return response()->json([
            'access_token' => $authToken,
        ]);
    }
}
