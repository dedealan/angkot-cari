@extends('layouts.app')

@section('title', 'Dashboard')

@section('contents')
    <style>
        .custom-modal-size {
            width: 800px;
            max-width: 95%;
            margin: auto;
        }

        .modal-dialog-centered {
            display: flex;
            align-items: center;
            min-height: calc(100% - 3.5rem);
        }

        .modal-content {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
    </style>

    <div class="d-flex align-items-center justify-content-between">
        <h1 class="mb-0">Angkot Tersedia</h1>
        <a href="{{ route('angkots.create') }}" class="btn btn-primary">Tambah Angkot</a>


    </div>
    <hr />
    @if (Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session::get('success') }}
        </div>
    @endif
    <div class="table-responsive">
        <table class="table table-hover">
            <thead class="table-primary">
                <tr>
                    <th class="text-center">No</th>
                    <th class="text-center">Kode Angkot</th>
                    <th class="text-center">Jam Berangkat</th>
                    <th class="text-center">Jam Pulang</th>
                    <th class="text-center">Warna Angkot</th>
                    <th class="text-center">Trayek</th>
                    <th class="text-center">Rute</th>
                    <th class="text-center">Tarif</th>
                    <th class="text-center">Create At</th>
                    <th class="text-center">Update At</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($angkots as $angkot)
                    <tr>
                        <td class="text-center">{{ $loop->iteration }}</td>
                        <td class="text-center">{{ $angkot->kode_angkot }}</td>
                        <td class="text-center">{{ $angkot->jam_berangkat }}</td>
                        <td class="text-center">{{ $angkot->jam_pulang }}</td>
                        <td class="text-center">{{ $angkot->warna_angkot }}</td>
                        <td class="text-center">{{ $angkot->trayek }}</td>
                        <td class="text-center">{{ $angkot->rute_jalan }}</td>
                        <td class="text-center">Rp. {{ $angkot->tarif }}</td>
                        <td class="text-center">{{ $angkot->created_at }}</td>
                        <td class="text-center">{{ $angkot->updated_at }}</td>

                        <td class="text-center">
                            <a href="{{ route('angkots.edit', $angkot->id) }}" class="btn btn-warning">Edit</a>
                            <form action="{{ route('angkots.destroy', $angkot->id) }}" method="POST"
                                style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
