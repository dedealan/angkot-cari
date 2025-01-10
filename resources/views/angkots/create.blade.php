@extends('layouts.app')


@section('contents')
    <div class="d-flex justify-content-between">
        <h1 class="mb-0">Tambah Angkot</h1>
        {{-- <a href="{{ route('angkot.index') }}" class="btn btn-secondary">Back</a> --}}
    </div>
    <hr />
    <form action="{{ route('angkots.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="no_angkot" class="form-label">Kode Angkot</label>
            <input type="text" class="form-control" id="kode_angkot" name="kode_angkot" required>
        </div>
        <div class="mb-3">
            <label for="jam_berangkat" class="form-label">Jam Berangkat</label>
            <input type="time" class="form-control" id="jam_berangkat" name="jam_berangkat" required>
        </div>
        <div class="mb-3">
            <label for="warna_angkot" class="form-label">Warna Angkot</label>
            <input type="text" class="form-control" id="warna_angkot" name="warna_angkot" required>
        </div>
        <div class="mb-3">
            <label for="trayek" class="form-label">Trayek</label>
            <input type="text" class="form-control" id="trayek" name="trayek" required>
        </div>
        <div class="mb-3">
            <label for="rute_jalan" class="form-label">Rute</label>
            <textarea class="form-control" id="rute_jalan" name="rute_jalan" rows="3" required></textarea>
        </div>
        <div class="mb-3">
            <label for="jam_pulang" class="form-label">Jam Pulang</label>
            <input type="time" class="form-control" id="jam_pulang" name="jam_pulang" required>
        </div>
        <div class="mb-3">
            <label for="tarif" class="form-label">Tarif</label>
            <input type="number" class="form-control" id="tarif" name="tarif" required>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
@endsection
