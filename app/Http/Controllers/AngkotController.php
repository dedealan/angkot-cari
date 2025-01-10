<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Angkot;

class AngkotController extends Controller
{
    // Halaman landing
    public function landing(Request $request)
    {
        // Ambil data rute_jalan
        $ruteJalan = Angkot::distinct('rute_jalan')->get(['rute_jalan']);

        return view('layouts.landing', [
            'rutes' => $ruteJalan,
        ]);
    }

    // Respon API jam berangkat
    public function jamBerangkat(Request $request)
    {
        $data = $request->all();
        $rute = $data['rute_jalan'];

        $jamBerangkat = Angkot::where('rute_jalan', $rute)->distinct('jam_berangkat')->get(['jam_berangkat']);

        if (count($jamBerangkat) > 0) {
            return response()->json([
                'success' => true,
                'data' => $jamBerangkat
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Data not found'
            ], 404);
        }
    }

    function cekAngkot(Request $request)
    {
        $data = $request->all();
        $rute = $data['rute_jalan'] ?? null;
        $jamBerangkat = $data['jam_berangkat'] ?? null;

        $angkots = Angkot::where('rute_jalan', $rute)
            ->where('jam_berangkat', $jamBerangkat)
            ->get();

        if (count($angkots) > 0) {
            return response()->json([
                'success' => true,
                'data' => $angkots
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Data not found'
            ], 404);
        }
    }


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $angkots = Angkot::orderBy('created_at', 'DESC')->get();

        return view('angkots.index', compact('angkots'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('angkots.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Angkot::create($request->all());

        return redirect()->route('angkots')->with('success', 'angkots added successfully');
    }



    public function cariAngkot(Request $request)
    {
        // Ambil parameter rute dan jam_berangkat dari URL
        $rute = $request->input('rute_jalan');
        $jam_berangkat = $request->input('jam_berangkat');

        // Cek apakah rute dan jam_berangkat ada
        if (empty($rute) || empty($jam_berangkat)) {
            return redirect()->back()->with('error', 'Mohon pilih rute dan jam keberangkatan!');
        }

        // Lakukan pencarian berdasarkan rute dan jam_berangkat
        $angkots = Angkot::where('rute_jalan', $rute)
            ->where('jam_berangkat', $jam_berangkat)
            ->get();



        // Kirim data angkots ke view
        return view('layouts.modal.angkot', compact('angkots'));
    }



    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $angkots = Angkot::findOrFail($id);

        return view('angkots.edit', compact('angkots'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $angkots = Angkot::findOrFail($id);

        $angkots->update($request->all());

        return redirect()->route('angkots')->with('success', 'angkot updated successfully');
    }




    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $angkots = Angkot::findOrFail($id);

        $angkots->delete();

        return redirect()->route('angkots')->with('success', 'angkot deleted successfully');
    }


    public function cari(Request $request)
    {
        $request->validate([
            'rute_jalan' => 'required|string',
            'jam' => 'required|date_format:H:i:s', // Pastikan format ini sesuai
        ]);

        $jamKeberangkatan = $request->jam;
        $jamPulang = date('H:i:s', strtotime($jamKeberangkatan) + 3600); // 1 hour later

        $angkots = Angkot::where('rute', $request->rute)
            ->whereBetween('jam_berangkat', [$jamKeberangkatan, $jamPulang])
            ->get(['kode_angkot', 'warna_angkot', 'trayek', 'rute_jalan', 'jam_berangkat', 'jam_pulang', 'tarif']);

        return response()->json($angkots);
    }
}
