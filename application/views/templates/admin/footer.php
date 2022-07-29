
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
    if( "<?php echo $this->session->flashdata('logout') != null ?>" ) setTimeout(() => { window.location.replace("<?= base_url('auth/logout') ?>") }, 5000);

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
    });

    $(function () {
      $.get("<?= base_url('admin/dashboard/total_arsip_per_kategori') ?>", function(data, status){
        const datas = JSON.parse( data );
        let kategori = [];
        let total_arsip = [];
        let warna = [];
        datas.forEach(data => {
          kategori.push( data.kategori )
          total_arsip.push( data.total_arsip )
          warna.push( data.warna )
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
    
      $.get("<?= base_url('admin/dashboard/grafik_per_tahun') ?>", function(data, status){
        const datas = JSON.parse( data );
        const nama_bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
        let kategori = [];
        let data_kategori = [];
        let total_arsip = [];
        let warna = [];
        let bulan = [];
        datas.forEach(data => {
          if( !bulan.includes( nama_bulan[data.bulan] ) ) {
            bulan.push( nama_bulan[data.bulan] );
            total_arsip.push(0);
            warna.push('#000');
          }

          if( !kategori.includes( data.kategori ) ) {
            kategori.push( data.kategori );
            data_kategori.push({
              label               : data.kategori,
              backgroundColor     : data.warna,
              pointRadius          : false,
              pointColor          : data.warna,
              pointHighlightFill  : '#fff',
              data                : total_arsip,
            });
            const index = kategori.indexOf( data.kategori );
            console.log( data.kategori ,': ', index )
            // data_kategori[index].data[data.bulan-1] = data.total_arsip;
          } else {
            // data_kategori.data
          }
        });
        console.log( data_kategori )
        
        var areaChartData = {
          labels  : bulan,
          datasets: []
        }
        datas.forEach(data => {
          if( !bulan.includes( nama_bulan[data.bulan] ) ) {
            bulan.push( nama_bulan[data.bulan] );
            total_arsip.push(0);
            warna.push('#000');
          }
        });

        areaChartData.datasets.push({
              label               : 'Digital Goods',
              backgroundColor     : '#00a65a',
              pointRadius          : false,
              pointColor          : '#00a65a',
              pointHighlightFill  : '#fff',
              data                : [28, 48, 40, 19, 86, 27, 90]
            })
        // console.log( areaChartData )
  
        var barChartCanvas = $('#barChart').get(0).getContext('2d')
        var barChartData = $.extend(true, {}, areaChartData)
        var temp0 = areaChartData.datasets[0]
        barChartData.datasets[0] = temp0
  
        var barChartOptions = {
          responsive              : true,
          maintainAspectRatio     : false,
          datasetFill             : false
        }
  
        new Chart(barChartCanvas, {
          type: 'bar',
          data: barChartData,
          options: barChartOptions
        })
      });
    })

    $(function() {
      const spanYear = $('#year');
      const date = new Date();
      let year = date.getFullYear();
      spanYear.text(year);
    });
  </script>

</body>
</html>
