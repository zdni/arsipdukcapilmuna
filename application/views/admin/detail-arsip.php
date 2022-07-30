    <div class="content-wrapper">
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0"><?= $page ?></h1>
              <a href="<?= base_url('admin/arsip') ?>" class="btn btn-sm btn-secondary">Kembali</a>
            </div>
          </div>
        </div>
      </div>
      
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-5 col-12">
              <div class="card card-primary">
                <div class="card-body">
                  <strong><i class="fas fa-user mr-1"></i> Nama</strong>
                  <p class="text-muted"><?= ( $data && isset($data->nama) ) ?  $data->nama : '' ?></p>
                  <hr>
                  <strong><i class="fas fa-map-marker-alt mr-1"></i> Tempat, Tanggal Lahir</strong>
                  <p class="text-muted"><?= ( $data && isset($data->ttl) ) ?  $data->ttl : '' ?></p>
                  <hr>
                  <strong><i class="fas fa-file-alt mr-1"></i> Kategori</strong>
                  <p class="text-muted"><?= ( $data && isset($data->kategori) ) ?  ucwords($data->kategori) : '' ?></p>
                  <hr>
                  <strong><i class="fas fa-tag mr-1"></i> Keterangan</strong>
                  <p class="text-muted"><?= ( $data && isset($data->keterangan) ) ?  ucwords($data->keterangan) : '' ?></p>
                </div>
              </div>
            </div>
            <div class="col-md-7 col-12">
              <div class="card">
                <div class="card-body">
                  <div class="post">
                    <div class="user-block">
                      <span class="username">
                        <span><?= ( $data && isset($data->pelapor) ) ?  $data->pelapor : '' ?></span>
                      </span>
                      <span class="description">Nama Pelapor</span>
                    </div>
                    <p class="mb-5">
                      Pelaporan berkas dilakukan pada tanggal <b><?= ( $data && isset($data->tanggal_berkas) ) ?  date_format(date_create($data->tanggal_berkas), 'd F Y') : '' ?></b>,<br>
                      dan berkas di ambil pada tanggal <b><?= ( $data && isset($data->tanggal_ambil) ) ?  date_format(date_create($data->tanggal_ambil), 'd F Y') : '' ?></b>
                    </p>
                    <span>Dengan Detail sebagai berikut: </span>
                    <div class="row">
                      <div class="col-md-4 col-12">
                        <div class="form-group">
                          <label for="">Nama Ayah</label>
                          <p><?= ( $data && isset($data->nama_ayah) ) ?  $data->nama_ayah : '' ?></p>
                        </div>
                      </div>
                      <div class="col-md-4 col-12">
                        <div class="form-group">
                          <label for="">Nama Ibu</label>
                          <p><?= ( $data && isset($data->nama_ibu) ) ?  $data->nama_ibu : '' ?></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p>
                    <a href="<?= base_url('uploads/dokumen/') . $data->file ?>" target="_new" class="text-sm mr-5"><i class="fas fa-link mr-1"></i> Lihat Berkas</a>
                    <a href="<?= base_url('uploads/dokumen/') . $data->file ?>" download class="text-sm"><i class="fas fa-download mr-1"></i> Download Berkas</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>