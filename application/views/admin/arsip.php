    <div class="content-wrapper">
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0"><?= $page ?></h1>
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
                  <table class="table table-bordered table-striped table-hover">
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
                <div class="card-footer clearfix">
                  <ul class="pagination pagination-sm m-0 float-right">
                    <?php for ($i=0; $i < ceil($total_data/10); $i++) {  ?>
                      <li class="page-item <?= ($p == $i) ? 'active': ''; ?>"><a class="page-link" href="<?= base_url('admin/arsip/index?p=') . $i ?>"><?= $i+1 ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>