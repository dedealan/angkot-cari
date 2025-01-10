<!DOCTYPE html>
<html>

<head>
  <title>Geolocation with Form</title>
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" />
  <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <style>
    #map {
      width: 100%;
      height: 50vh;
      margin-top: 20px;
    }

    #route-info {
      margin-top: 20px;
      font-size: 16px;
      font-weight: bold;
    }

    .navbar {
      margin-bottom: 50px;
    }


    .modal-dialog {
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .modal-content {
      width: 400px;
      height: 700px;
      background-color: white;
      /* Set background color to white */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-primary w-100">
    <div class="container-fluid">
      <a class="navbar-brand" style="color: white;">Mencari Angkot Umum</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
        <div></div> <!-- Empty div to push the login button to the right -->
        <form class="d-flex" action="{{ route('login') }}" method="GET">
          <button class="btn btn-secondary" type="submit">Login</button>
        </form>
      </div>
    </div>
  </nav>

  <div class="container mt-4">
    <div class="row justify-content-center">
      <!-- Kolom Kiri (Map dan Form) -->
      <div class="col-md-6 d-flex flex-column">
        <div class="flex-grow-1">
          <div class="text-center">
            <h1>Mau Kemana nih?</h1>
          </div>
          <div id="map" class="mb-4 w-100" style="height: 400px;"></div>
          <!-- Peta dengan tinggi yang tetap -->

          <div id="form-container" class="col mb-3">
            <div class="col-12 mb-3">
              <select id="start-location" class="form-select">
                <option value="-6.1183255131450505, 106.16994885563196">Ahmad Yani-Kepandean PP</option>
                <option value="-6.123555338147862, 106.17141287666796">Cipocok</option>
                <option value="-6.109251631462418, 106.16776001476646">Pasar Rau</option>
                <option value="-6.148818629321701, 106.19189109680713">Polda Banten</option>
                <option value="-6.130648344612414, 106.16115755981039">Simpang Boru</option>
                <option value="-6.2079136378707584, 106.35752252049565">Terminal Cikande</option>
                <option value="-6.189568825486181, 106.46365785670349">Terminal Balaraja</option>
                <option value="-6.121550248571412, 106.19649696235386">Terminal Pakupatan Serang
                </option>
              </select>
            </div>

            <div class="col-12 mb-3">
              <select id="end-location" class="form-select">
                <option value="-6.1183255131450505, 106.16994885563196">Ahmad Yani-Kepandean PP</option>
                <option value="-6.123555338147862, 106.17141287666796">Cipocok</option>
                <option value="-6.109251631462418, 106.16776001476646">Pasar Rau</option>
                <option value="-6.148818629321701, 106.19189109680713">Polda Banten</option>
                <option value="-6.130648344612414, 106.16115755981039">Simpang Boru</option>
                <option value="-6.2079136378707584, 106.35752252049565">Terminal Cikande</option>
                <option value="-6.189568825486181, 106.46365785670349">Terminal Balaraja</option>
                <option value="-6.121550248571412, 106.19649696235386">Terminal Pakupatan Serang
                </option>
              </select>
            </div>

            <div class="col-12">
              <button onclick="calculateRoute()" type="button" class="btn btn-success w-100">Cari
                Rute</button>
            </div>
          </div>

          <div id="route-info" class="row">
            <div class="col-12">
              <p id="distance"></p>
            </div>
            <div class="col-12">
              <p id="duration"></p>
            </div>
            <div class="col-12">
              <p id="rute"></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6 d-flex flex-column">

        <div class="flex-grow-1">
          <div class="text-center mb-3">
            <h1>Cari Angkot Yukk</h1>
          </div>
          <div class="mb-4 w-100 ">
            <img src='{{ asset('assets/img/bg_halutama.png') }}' alt="" style="width: 100%; height: 400px;">
          </div>

          <!-- Peta dengan tinggi yang tetap -->

          <!-- Form Cari Angkot -->
          <form id="cari-angkot" action="{{ route('angkot.cari') }}" method="POST">
            @csrf
            {{-- Pilih rute jalan (Hard code) --}}
            <div class="col-12 mb-3">
              <select id="rute_jalan" name="rute_jalan" class="form-select" required>
                <option value="">-- Pilih Rute --</option>
                @foreach ($rutes as $rute)
                  <option value="{{ $rute->rute_jalan }}">{{ $rute->rute_jalan }}</option>
                @endforeach
              </select>
            </div>

            {{-- Pilih Jam Berangkat Hit Via API --}}
            <div class="col-12 mb-3">
              <select id="jam_berangkat" name="jam_berangkat" class="form-select" required>
                <option value="">-- Pilih Jam Berangkat --</option>
              </select>
            </div>



            <div class="col-12">
              <button type="submit" class="btn btn-primary w-100">Cari Angkot</button>
            </div>
          </form>
        </div>

      </div>
    </div>


  </div>

  <!-- Modal -->
  @include('layouts.modal.angkot')






  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"></script>
  <script src="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
    integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  <script src="{{ asset('js/map.js') }}"></script>

  <script>
    $(document).ready(function() {
      $('#rute_jalan').on('change', function() {
        var rute_jalan = $(this).val();
        // Fetch post rute_jalan ke /api/angkot/jam-berangkat
        fetch('/api/angkot/jam-berangkat', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            body: JSON.stringify({
              rute_jalan: rute_jalan
            })
          })
          .then(response => response.json())
          .then(res => {
            var select = $('#jam_berangkat');
            select.empty(); // Kosongin opsi jam sebelumnya
            select.append('<option value="">-- Pilih Jam Berangkat --</option>'); // Tambahkan opsi default

            // Looping data dan tambahkan opsi baru
            for (var i = 0; i < res.data.length; i++) {
              select.append('<option value="' + res.data[i].jam_berangkat + '">' + res.data[i].jam_berangkat +
                '</option>');
            }
          });
      });

      //   Cari angkot berdasarkan rute dan jam berangkat
      $('#cari-angkot').submit(function(e) {
        e.preventDefault();

        // Hapus detail angkot sebelumnya
        let formDetailAngkot = $('#detail-angkot')[0];
        formDetailAngkot.reset();

        // Ambil data rute_jalan dan jam_berangkat
        var rute_jalan = $('#rute_jalan').val();
        var jam_berangkat = $('#jam_berangkat').val();

        // Validasi rute_jalan dan jam_berangkat
        if (rute_jalan && jam_berangkat) {

          // Munculin modal detail angkot
          $('#angkotModal').modal('show');

          // Ambil data detail angkot dengan API
          fetch('/api/angkot/cek-angkot', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              },
              body: JSON.stringify({
                rute_jalan: rute_jalan,
                jam_berangkat: jam_berangkat
              })
            })
            .then(response => response.json())
            .then(res => {
              if (res.data.length > 0) {
                var angkot = res.data[0];

                // Isi form detail angkot di modal
                $('#detail-angkot').find('input[name="kode_angkot"]').val(angkot.kode_angkot);
                $('#detail-angkot').find('input[name="warna_angkot"]').val(angkot.warna_angkot);
                $('#detail-angkot').find('input[name="trayek"]').val(angkot.trayek);
                $('#detail-angkot').find('input[name="jam_berangkat"]').val(angkot.jam_berangkat);
                $('#detail-angkot').find('input[name="jam_pulang"]').val(angkot.jam_pulang);
                $('#detail-angkot').find('input[name="tarif"]').val(angkot.tarif);
              }
            })
        }
      });

    });
  </script>

</body>

</html>
