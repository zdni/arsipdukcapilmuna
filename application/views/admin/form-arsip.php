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
            <div class="col-12">
              <div class="card">
                <form action="<?= base_url('admin/arsip/') . $form ?>" method="post" enctype="multipart/form-data">
                  <div class="card-header">
                    <h5><?= $page ?></h5>
                  </div>
                  <div class="card-body">
                    <div class="row">
                      <input type="hidden" class="form-control" name="id" id="id" value="<?= ( $data && isset($data->id) ) ?  $data->id : '' ?>" required>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <label for="">Nama</label>
                          <input type="text" class="form-control" name="nama" id="nama" value="<?= ( $data && isset($data->nama) ) ?  $data->nama : '' ?>" required>
                        </div>
                      </div>
                      <div class="col-md-3 col-12">
                        <div class="form-group">
                          <label for="">Tempat Lahir</label>
                          <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" value="<?= ( $data && isset($data->nama) ) ?  $data->tempat_lahir : '' ?>" required>
                        </div>
                      </div>
                      <div class="col-md-3 col-12">
                        <div class="form-group">
                          <label for="">Tanggal Lahir</label>
                          <input type="date" class="form-control" name="tanggal_lahir" id="tanggal_lahir" value="<?= ( $data && isset($data->nama) ) ?  $data->tanggal_lahir : '' ?>" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4 col-12">
                        <div class="form-group">
                          <label for="">Nama Ayah</label>
                          <input type="text" class="form-control" name="nama_ayah" id="nama_ayah" value="<?= ( $data && isset($data->nama) ) ?  $data->nama_ayah : '' ?>" required>
                        </div>
                      </div>
                      <div class="col-md-4 col-12">
                        <div class="form-group">
                          <label for="">Nama Ibu</label>
                          <input type="text" class="form-control" name="nama_ibu" id="nama_ibu" value="<?= ( $data && isset($data->nama) ) ?  $data->nama_ibu : '' ?>" required>
                        </div>
                      </div>
                      <div class="col-md-4 col-12">
                        <div class="form-group">
                          <label for="">Nama Pelapor</label>
                          <input type="text" class="form-control" name="pelapor" id="pelapor" value="<?= ( $data && isset($data->nama) ) ?  $data->pelapor : '' ?>" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <label for="">Tanggal Berkas</label>
                          <input type="date" class="form-control" name="tanggal_berkas" id="tanggal_berkas" value="<?= ( $data && isset($data->nama) ) ?  $data->tanggal_berkas : '' ?>" required>
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <label for="">Tanggal Ambil</label>
                          <input type="date" class="form-control" name="tanggal_ambil" id="tanggal_ambil" value="<?= ( $data && isset($data->nama) ) ?  $data->tanggal_ambil : '' ?>" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <label for="">Keterangan</label>
                          <select name="keterangan" id="keterangan" class="form-control">
                            <option <?= ( $data && isset( $data->keterangan ) && $data->keterangan == 'umum')  ? 'selected' : '' ?> value="umum">Umum</option>
                            <option <?= ( $data && isset( $data->keterangan ) && $data->keterangan == 'terlambat')  ? 'selected' : '' ?> value="terlambat">Terlambat</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <label for="">Kategori</label>
                          <select name="kategori_id" id="kategori_id" class="form-control">
                            <?php foreach ($kategori as $kat) { ?>
                              <option <?= ($data && isset( $data->kategori_id ) && $data->kategori_id == $kat->id ) ? 'selected' : '' ?> value="<?= $kat->id ?>"><?= $kat->nama ?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="">File</label>
                      <input type="file" class="form-control" name="file" id="file" <?= ($form == 'tambah') ? 'required' : '' ?>>
                      <?php if( $data && isset( $data->file ) && $data->file ): ?>
                        <a href="<?= base_url('uploads/dokumen/') . $data->file ?>" target="_new" ><?= $data->file ?></a>
                      <?php endif; ?>
                    </div>
                  </div>
                  <div class="card-footer">
                    <button type="submit" class="btn btn-sm btn-primary"><?= ucwords($form) ?> Arsip</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>