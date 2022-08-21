<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan</title>
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"> -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/adminlte.min.css">
</head>
<body>
    <h3 class="text-center">Laporan</h3>

    <div class="container-fluid">
        <?php foreach ($datas as $data => $values) { ?>
            <span class="badge badge-info"><?= $data ?></span>
            <?php foreach ($values as $tanggal => $value) { ?>
                <div class="card-body">
                    <p><?= $tanggal ?></p>
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama</th>
                                <th>TTL</th>
                                <th>Nama Ayah</th>
                                <th>Nama Ibu</th>
                                <th>Pelapor</th>
                                <th>Kategori</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $number = 1; foreach ($value as $arsip) { ?>
                                <tr>
                                    <td><?= $number ?></td>
                                    <td><?= $arsip->nama ?></td>
                                    <td><?= $arsip->ttl ?></td>
                                    <td><?= $arsip->nama_ayah ?></td>
                                    <td><?= $arsip->nama_ibu ?></td>
                                    <td><?= $arsip->pelapor ?></td>
                                    <td><?= $arsip->kategori ?></td>
                                    <td><?= ucwords( $arsip->keterangan ) ?></td>
                                </tr>
                            <?php $number++; } ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
        <?php } ?>
    </div>

    <script src="<?= base_url('assets/') ?>plugins/jquery/jquery.min.js"></script>
    <script src="<?= base_url('assets/') ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url('assets/') ?>dist/js/adminlte.min.js"></script>
</body>
</html>