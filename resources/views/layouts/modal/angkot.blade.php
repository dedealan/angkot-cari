<div class="modal fade" id="angkotModal" tabindex="-1" aria-labelledby="angkotModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="angkotModalLabel">Hasil Pencarian Angkots</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form id="detail-angkot" method="POST">
        <div class="modal-body" id="modalBodyAngkot">
            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Kode Angkot</label>
                <input type="text" name="kode_angkot" class="form-control" placeholder="Kode Angkot" value=""
                  readonly>
              </div>
            </div>
            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Warna Angkot</label>
                <input type="text" name="warna_angkot" class="form-control" placeholder="Warna Angkot" value=""
                  readonly>
              </div>
            </div>
    
            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Trayek</label>
                <input type="text" name="trayek" class="form-control" placeholder="Trayek" value="" readonly>
              </div>
            </div>

            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Jam Berangkat</label>
                <input type="time" name="jam_berangkat" class="form-control" value="" readonly>
              </div>
            </div>

            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Jam Pulang</label>
                <input type="time" name="jam_pulang" class="form-control" value="" readonly>
              </div>
            </div>

            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Tarif (Rp)</label>
                <input type="text" name="tarif" class="form-control" placeholder="Tarif" value="" readonly>
              </div>
            </div>
          </div>
      </form>
    </div>
  </div>
</div>
