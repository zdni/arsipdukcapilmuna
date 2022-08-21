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
            <?php if( $this->session->userdata('role_name') == 'Kepala Bidang' ): ?>
            <div class="col-lg-lg-4 col-md-4 col-sm-12">
              <div class="info-box shadow-sm">
                <span class="info-box-icon bg-secondary"><i class="fas fa-users"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Data User</span>
                  <span class="info-box-number"><?= $users ?></span>
                </div>
              </div>
            </div>
            <?php endif; ?>
            <div class="col-lg-lg-4 col-md-4 col-sm-12">
              <div class="info-box shadow-sm">
                <span class="info-box-icon bg-success"><i class="fas fa-book"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Data Arsip</span>
                  <span class="info-box-number"><?= $arsip ?></span>
                </div>
              </div>
            </div>
            <div class="col-lg-lg-4 col-md-4 col-sm-12">
              <div class="info-box shadow-sm">
                <span class="info-box-icon bg-info"><i class="fas fa-th"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Kategori</span>
                  <span class="info-box-number"><?= $kategori ?></span>
                </div>
              </div>
            </div>
            <?php if( $this->session->userdata('role_name') == 'Kepala Bidang' ): ?>
            <div class="col-12">
              <div class="card">
                <div class="card-body text-center">
                  <h3>SELAMAT DATANG DI HALAMAN ADMIN</h3>
                  <p class="mt-5"><b>SISTEM INFORMASI ARSIP<br>DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL KABUPATEN MUNA</b></p>
                </div>
              </div>
            </div>
            <?php endif; ?>
            <?php if( $this->session->userdata('role_name') == 'Kepala Dinas' ): ?>
              <div class="col-md-6 col-12">
                <div class="card card-danger">
                  <div class="card-header">
                    <h3 class="card-title">Total Arsip per Kategori</h3>
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                  <div class="card-body">
                    <canvas id="donutChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-12">
                <div class="card card-success">
                  <div class="card-header">
                    <h3 class="card-title">Grafik Data Tahun <span id="year"></span> </h3>
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="chart">
                      <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            <?php endif; ?>
            <div class="col-12 mt-3">
              <div class="card">
                <div class="card-body">
                  <h3 class="text-center mb-5">Profil Dinas Kependudukan dan Pencatatan Sipil Kabupaten Muna</h3>
                  <h5>Dinas Kependudukan dan Pencatatan Sipil Kabupaten Muna merupakan unsur Pelaksanaan Pemerintah Daerah Kabupaten Muna dalam bidang Pendaftaran dan Pencatatan Penduduk yang mempunyai tugas pokok membantu Kepala Daerah dalam melaksanakan sebagian urusan Pemerintahan dan Pembangunan dibidang Kependudukan dan Pencatatan Sipil sesuai dengan ketentuan dan perundang-undangan yang berlaku.</h5>
                </div>
              </div>
            </div>
            <div class="col-12">
              <div class="card">
                <div class="card-body text-center">
                  <h4>Visi Dukcapil Muna "Mewujudkan Tertib Administrasi Kependudukan Berbasis Teknologi Informasi Melalui Pelayanan Prima"</h4>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>