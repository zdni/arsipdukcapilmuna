  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="<?= base_url() ?>" class="brand-link">
      <img src="<?= base_url('assets/') ?>img/logo.png" alt="Logo POLTEKKES KEMENKES MALUKU" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">SIAP Sipil DUKCAPIL</span>
    </a>

    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?= $user_image ?>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="<?= base_url('profile') ?>" class="d-block"><?= $name ?></a>
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="<?= base_url('admin/dashboard') ?>" class="nav-link" id="dashboard_index">
              <i class="nav-icon fas fa-columns"></i>
              <p>
                Beranda
              </p>
            </a>
          </li>
          <?php if( in_array($this->session->userdata('role_name'), ['Kepala Bidang', 'Staff'])  ): ?>
          <li class="nav-item">
            <a href="<?= base_url('admin/kategori') ?>" class="nav-link" id="kategori_index">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Data Kategori
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('admin/arsip') ?>" class="nav-link" id="arsip_index">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Data Arsip
              </p>
            </a>
          </li>
          <?php endif; ?>
          <?php if( $this->session->userdata('role_name') == 'Kepala Bidang' ): ?>
          <li class="nav-item">
            <a href="<?= base_url('admin/users') ?>" class="nav-link" id="users_index">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Manajemen User
              </p>
            </a>
          </li>
          <?php endif; ?>
          <?php if( $this->session->userdata('role_name') == 'Kepala Dinas' ): ?>
            <li class="nav-item">
            <a href="#" class="nav-link" type="button" data-toggle="modal" data-target="#modal-laporan">
              <i class="nav-icon far fa-file"></i>
              <p>
                Rekapitulasi Laporan
              </p>
            </a>
            
          </li>
          <?php endif; ?>
        </ul>
      </nav>
    </div>
  </aside>