<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <style>
        h3 {
            margin-bottom: 0.5rem;
            font-family: inherit;
            font-weight: 500;
            line-height: 1.2;
            color: inherit;
            font-size: 1.75rem;
        }
        table {
            border-collapse: collapse;
        }
        .text-center{
            text-align:center!important
        }
        .container-fluid{
            width:100%;
            padding-right:15px;
            padding-left:15px;
            margin-right:auto;
            margin-left:auto
        }
        .badge {
            display: inline-block;
            padding: 0.25em 0.4em;
            font-size: 75%;
            font-weight: 700;
            line-height: 1;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: 0.25rem;
        }
        .badge-info {
            color: #fff;
            background-color: #17a2b8;
        }
        .card-body {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 1.25rem;
        }
        .table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 1rem;
            background-color: transparent;
        }
        .table th,
        .table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6;
        }
        .table tbody + tbody {
            border-top: 2px solid #dee2e6;
        }
        .table-bordered {
            border: 1px solid #dee2e6;
        }
        .table-bordered th,
        .table-bordered td {
            border: 1px solid #dee2e6;
        }
        .table-bordered thead th,
        .table-bordered thead td {
            border-bottom-width: 2px;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        @media print {
            .badge {
                border: 1px solid #000;
            }
            .table {
                border-collapse: collapse !important;
            }
        }

    </style>
</head>
<body>
    <div class="container-fluid">
        <div>
            <div style="float: left">
                <img src="<?= base_url('assets/img/kabupaten_muna.png') ?>" alt="" style="width: 100px">
            </div>
            <div class="text-center">
                <h1 style="margin: 0">PEMERINTAH KABUPATEN MUNA</h1>
                <h1 style="margin: 0">DINAS PENDUDUKAN DAN PENCATATAN SIPIL</h1>
                <p style="margin: 0; font-weight: bold; margin-top: 10px;">JL. M. H. TAMRIN</p>
            </div>
        </div>
        <hr>
        <h3 class="text-center"><?= $title_pdf ?></h3>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama</th>
                    <th>NIK</th>
                    <th>Nama Ayah</th>
                    <th>Nama Ibu</th>
                    <th>Kategori</th>
                    <th>Tanggal Berkas</th>
                </tr>
            </thead>
            <tbody>
                <?php $number = 1; foreach ($datas as $arsip) { ?>
                    <tr>
                        <td class="text-center"><?= $number ?></td>
                        <td><?= $arsip->nama ?></td>
                        <td><?= $arsip->nik ?></td>
                        <td><?= $arsip->nama_ayah ?></td>
                        <td><?= $arsip->nama_ibu ?></td>
                        <td><?= $arsip->kategori ?></td>
                        <td><?= date_format(date_create($arsip->tanggal_berkas), 'd F Y') ?></td>
                    </tr>
                <?php $number++; } ?>
            </tbody>
        </table>
        <!-- <?php foreach ($datas as $data => $values) { ?>
            <span class="badge badge-info"><?= $data ?></span>
            <?php foreach ($values as $tanggal => $value) { ?>
                <div class="card-body">
                    <p><?= $tanggal ?></p>
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama</th>
                                <th>NIK</th>
                                <th>Nama Ayah</th>
                                <th>Nama Ibu</th>
                                <th>Kategori</th>
                                <th>Tanggal Berkas</th>
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
        <?php } ?> -->
    </div>

</body>
</html>