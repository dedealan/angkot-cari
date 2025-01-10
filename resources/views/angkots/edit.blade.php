@extends('layouts.app')

@section('title', 'Edit Angkot')

@section('contents')
    <h1 class="mb-0">Edit Angkot</h1>
    <hr />
    <form action="{{ route('angkots.update', $angkots->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="row">

            <div class="col mb-3">
                <label class="form-label">Kode Angkot</label>
                <input type="text" name="kode_angkot" class="form-control" placeholder="Kode Angkot"
                    value="{{ $angkots->kode_angkot }}">
            </div>
        </div>
        <div class="row">
            <div class="col mb-3">
                <label class="form-label">Jam Berangkat</label>
                <input type="time" name="jam_berangkat" class="form-control" value="{{ $angkots->jam_berangkat }}">
            </div>
            <div class="col mb-3">
                <label class="form-label">Jam Pulang</label>
                <input type="time" name="jam_pulang" class="form-control" value="{{ $angkots->jam_pulang }}">
            </div>
        </div>
        <div class="row">
            <div class="col mb-3">
                <label class="form-label">Warna Angkot</label>
                <input type="text" name="warna_angkot" class="form-control" placeholder="Warna Angkot"
                    value="{{ $angkots->warna_angkot }}">
            </div>
            <div class="col mb-3">
                <label class="form-label">Trayek</label>
                <input type="text" name="trayek" class="form-control" placeholder="Trayek"
                    value="{{ $angkots->trayek }}">
            </div>
        </div>
        <div class="row">
            <div class="col mb-3">
                <label class="form-label">Rute</label>
                <input type="text" name="rute_jalan" class="form-control" placeholder="rute_jalan"
                    value="{{ $angkots->rute_jalan }}">
            </div>
            <div class="col mb-3">
                <label class="form-label">Tarif</label>
                <input type="number" name="tarif" class="form-control" placeholder="Tarif" value="{{ $angkots->tarif }}">
            </div>
        </div>
        <div class="row">
            <div class="d-grid mb-3">
                <button class="btn btn-warning">Update</button>
            </div>
        </div>
    </form>
@endsection
