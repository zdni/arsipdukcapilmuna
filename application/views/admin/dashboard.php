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
          </div>
        </div>
      </div>
    </div>