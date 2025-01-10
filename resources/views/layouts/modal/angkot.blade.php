<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>data</title>
</head>

<body>
    <div class="modal fade" id="angkotModal" tabindex="-1" aria-labelledby="angkotModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="angkotModalLabel">Hasil Pencarian Angkots</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="modalBodyAngkot">
                    @if (isset($angkots) && $angkots->count() > 0)
                        @foreach ($angkots as $angkot)
                            <div class="row">
                                <div class="col mb-3">
                                    <label class="form-label">Kode Angkot</label>
                                    <input type="text" name="kode_angkot" class="form-control"
                                        placeholder="Kode Angkot" value="{{ $angkot->kode_angkot }}" readonly>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mb-3">
                                    <label class="form-label">Warna Angkot</label>
                                    <input type="text" name="warna_angkot" class="form-control"
                                        placeholder="Warna Angkot" value="{{ $angkot->warna_angkot }}" readonly>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col mb-3">
                                    <label class="form-label">Trayek</label>
                                    <input type="text" name="trayek" class="form-control" placeholder="Trayek"
                                        value="{{ $angkot->trayek }}" readonly>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mb-3">
                                    <label class="form-label">Jam Berangkat</label>
                                    <input type="time" name="jam_berangkat" class="form-control"
                                        value="{{ $angkot->jam_berangkat }}" readonly>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mb-3">
                                    <label class="form-label">Tarif (Rp)</label>
                                    <input type="text" name="tarif" class="form-control" placeholder="Tarif"
                                        value="{{ $angkot->tarif }}" readonly>
                                </div>
                            </div>
                        @endforeach
                    @else
                        <p class="text-danger text-center">Angkot tidak ditemukan untuk rute dan jam tersebut.</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</body>

</html>





<script>
    function cariAngkot() {
        var rute_jalan = document.getElementById('rute_jalan').value;
        var jam = document.getElementById('jam_berangkat').value;

        // jika rute dan jam kosong
        if (rute_jalan == '' || jam == '') {
            alert('kosong bro!');
            return;
        }
        console.log("Rute: " + rute_jalan);
        console.log("Jam: " + jam);

        if (rute_jalan && jam) {
            // Tampilkan loading saat fetch
            var modalBody = document.getElementById('modalBodyAngkot');
            modalBody.innerHTML = '<p class="text-center">Loading...</p>';

            fetch(`/angkot/${rute_jalan}/${jam}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Angkot tidak ditemukan.');
                    }
                    return response.text();
                })
                .then(html => {
                    // Isi modal dengan konten hasil pencarian
                    var modalBody = document.getElementById('modalBodyAngkot');
                    modalBody.innerHTML = html;
                    // Tampilkan modal
                    var myModal = new bootstrap.Modal(document.getElementById('angkotModal'));
                    myModal.show();
                })
                .catch(error => {
                    modalBody.innerHTML = `<p class="text-danger text-center">${error.message}</p>`;
                    var myModal = new bootstrap.Modal(document.getElementById('angkotModal'));
                    myModal.show();
                });
        } else {
            alert(`Mohon pilih rute ${rute_jalan} dan jam keberangkatan ${jam}!`);
        }
    }
</script>
