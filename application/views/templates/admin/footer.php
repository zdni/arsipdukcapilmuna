    <div class="modal fade" id="modal-laporan">
      <div class="modal-dialog">
        <div class="modal-content">
          <form action="<?= base_url('admin/dashboard/cetak_laporan') ?>" method="post" target="_blank">
            <div class="modal-header">
              <h4 class="modal-title">Cetak Laporan</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label for="">Tanggal Awal Berkas</label>
                <input type="date" class="form-control" name="mulai_tanggal_berkas" id="mulai_tanggal_berkas" required>
              </div>
              <div class="form-group">
                <label for="">Tanggal Akhir Berkas</label>
                <input type="date" class="form-control" name="akhir_tanggal_berkas" id="akhir_tanggal_berkas" required>
              </div>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-sm btn-primary">Cetak</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <footer class="main-footer">
      <strong>Sistem Informasi Arsip Pencatatan Sipil DUKCAPIL Kabupaten Muna &copy; 2022 </strong>
    </footer>
  </div>

  <script src="<?= base_url('assets/') ?>plugins/jquery/jquery.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url('assets/') ?>dist/js/adminlte.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/sweetalert2/sweetalert2.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/summernote/summernote-bs4.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/chart.js/Chart.min.js"></script>
  
  <script>
    if( '<?= $this->session->flashdata('alert') ?>' == 'success' ) Swal.fire( 'Berhasil!', '<?= $this->session->flashdata('message') ?>', 'success' );
    if( '<?= $this->session->flashdata('alert') ?>' == 'warning' ) Swal.fire( 'Peringatan!', '<?= $this->session->flashdata('message') ?>', 'warning' );
    if( '<?= $this->session->flashdata('alert') ?>' == 'error' ) Swal.fire( 'Gagal!', '<?= $this->session->flashdata('message') ?>', 'error' );
    if( "<?php echo $this->session->flashdata('logout') != null ?>" ) setTimeout(() => { window.location.replace("<?= base_url('auth/logout') ?>") }, 1000);

    const menu_id = "<?= $menu_id ?>";
    const menu_link = document.getElementById( menu_id );
    if( menu_link ) menu_link.classList.add('active');
    
    $('.summernote_form').summernote()
  </script>

  <script>
    $(function () {
      $(".table-data").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('.table-data-no-search').DataTable({ "paging": true, "lengthChange": false, "searching": false, "ordering": true, "info": true, "autoWidth": false, "responsive": true, });
    });

    $(function () {
      let kategori = [];
      let warna = [];
      let dataset = [];
      $.get("<?= base_url('admin/dashboard/ambil_kategori') ?>", function(data, status){
        const datas = JSON.parse( data );
        datas.forEach(data => {
          kategori.push( data.nama )
          warna.push( data.warna )
        });

        // chart total arsip per kategori
        if( $('#donutChart').get(0) ) {
          $.get("<?= base_url('admin/dashboard/total_arsip_per_kategori') ?>", function(data, status){
            const datas = JSON.parse( data );
            let total_arsip = [];
            datas.forEach(data => {
              total_arsip.push( data.total_arsip )
            });
            
            var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
            var donutData        = {
              labels: kategori,
              datasets: [
                {
                  data: total_arsip,
                  backgroundColor : warna,
                }
              ]
            }
            var donutOptions     = {
              maintainAspectRatio : false,
              responsive : true,
            }
            new Chart(donutChartCanvas, {
              type: 'doughnut',
              data: donutData,
              options: donutOptions
            })
          });
        }

        // grafik total per bulan
        if( $('#barChart').get(0) ) {
          $.get("<?= base_url('admin/dashboard/grafik_per_tahun') ?>", function(data, status){
            const datas = JSON.parse( data );
            const nama_bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
            
            var areaChartData = {
              labels  : datas[1],
              datasets: datas[0]
            }
    
            var barChartCanvas = $('#barChart').get(0).getContext('2d')
            var barChartData = $.extend(true, {}, areaChartData)
            var temp0 = areaChartData.datasets[0]
            barChartData.datasets[0] = temp0
      
            var barChartOptions = {
              responsive              : true,
              maintainAspectRatio     : false,
              datasetFill             : false,
              scales                  : {
                y: { beginAtZero: true }
              },
            }
      
            new Chart(barChartCanvas, {
              type: 'bar',
              data: barChartData,
              options: barChartOptions
            });
          });
        }

      })
    });

    $(function() {
      const spanYear = $('#year');
      const date = new Date();
      let year = date.getFullYear();
      spanYear.text(year);
    });
  </script>

</body>
</html>
