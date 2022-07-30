    <div class="content-wrapper">
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-md-6 col-12">
              <h1 class="m-0"><?= $page ?></h1>
            </div>
            <div class="col-md-6 col-12">
              <form action="<?= base_url('admin/arsip/index') ?>" method="get">
                <div class="row">
                  <div class="col-md-4 col-12">
                    <select name="f" id="f" class="form-control">
                      <?php foreach ($fields as $field) { 
                        if( !in_array( $field, ['id', 'tanggal_lahir', 'tanggal_berkas', 'tanggal_ambil'] ) ): ?>
                        <option value="<?= preg_replace( "/_id/i", "", $field ) ?>" <?= ($f == preg_replace( "/_id/i", "", $field )) ? 'selected' : '' ?>><?= ucwords( preg_replace( "/id/i", "", preg_replace( "/_/", " ", $field ) ) ) ?></option>
                      <?php 
                        endif; 
                      } ?>
                    </select>
                  </div>
                  <div class="col-md-8 col-12">
                    <div class="input-group">
                      <input type="text" class="form-control" name="k" id="k" value="<?= $k ?>">
                      <span class="input-group-append">
                        <button type="submit" class="btn btn-info btn-flat">Cari</button>
                      </span>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h5>Daftar <?= $page ?></h5>
                  <a class="btn btn-sm btn-primary" href="<?= base_url('admin/arsip/form?form=tambah') ?>">Tambah <?= $page ?></a>
                </div>
                <div class="card-body">
                  <table class="table table-bordered table-striped table-hover table-data-no-search">
                    <thead>
                      <th>No.</th>
                      <th>Nama</th>
                      <th>TTL</th>
                      <th>Nama Ayah</th>
                      <th>Nama Ibu</th>
                      <th>Pelapor</th>
                      <th>Kategori</th>
                      <th>Keterangan</th>
                      <th>Aksi</th>
                    </thead>
                    <tbody>
                      <?php $number = 1; foreach ($datas as $data) {  ?>
                        <tr>
                          <td><?= $number ?></td>
                          <td><?= $data->nama ?></td>
                          <td><?= $data->ttl ?></td>
                          <td><?= $data->nama_ayah ?></td>
                          <td><?= $data->nama_ibu ?></td>
                          <td><?= $data->pelapor ?></td>
                          <td><?= $data->kategori ?></td>
                          <td><?= ucwords( $data->keterangan ) ?></td>
                          <td>
                            <a class="btn btn-sm btn-outline-primary" href="<?= base_url('admin/arsip/form/') . $data->id . '?form=ubah' ?>">Ubah</a>
                            <button class="btn btn-sm btn-outline-danger" type="button" data-toggle="modal" data-target="#modal-hapus-arsip-<?= $data->id ?>">Hapus</button>
                            <div class="modal fade" id="modal-hapus-arsip-<?= $data->id ?>">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <form action="<?= base_url('admin/arsip/hapus') ?>" method="post">
                                    <div class="modal-header">
                                      <h4 class="modal-title">Hapus <?= $page ?></h4>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                      </button>
                                    </div>
                                    <div class="modal-body">
                                      <input type="hidden" name="id" id="id" class="form-control" required value="<?= $data->id ?>">
                                      <p>Yakin ingin menghapus Arsip <?= $data->nama ?></p>
                                    </div>
                                    <div class="modal-footer justify-content-between">
                                      <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Batal</button>
                                      <button type="submit" class="btn btn-sm btn-danger">Hapus <?= $page ?></button>
                                    </div>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </td>
                        </tr>                        
                      <?php $number++; } ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>