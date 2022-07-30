<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends User_Controller {
	
	function __construct()
	{
        parent::__construct();
        $this->load->model([
            'kategori_model',
            'arsip_model',
            'users_model',
        ]);
        $this->db->query(
            'SET SESSION sql_mode =
            REPLACE(REPLACE(REPLACE(
            @@sql_mode,
            "ONLY_FULL_GROUP_BY,", ""),
            ",ONLY_FULL_GROUP_BY", ""),
            "ONLY_FULL_GROUP_BY", "")'
        );
	}

	public function index()
    {
        $this->data['kategori'] = count( $this->kategori_model->kategori()->result() );
        $this->data['arsip'] = count( $this->arsip_model->arsip()->result() );
        $this->data['users'] = count( $this->users_model->users()->result() );
        
        $this->data['page'] = 'Beranda';
        $this->render('admin/dashboard');
    }

    public function total_arsip_per_kategori()
    {
        $data = $this->arsip_model->total_arsip_per_kategori()->result();
        echo json_encode( $data );
    }

    public function grafik_per_tahun()
    {
        $nama_bulan = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
        $bulan = $total_arsip = $dataset = $kategori = $dataset = [];
        
        $datas = $this->arsip_model->grafik_pertahun()->result();
        foreach ($datas as $data) {
            if( !in_array( $nama_bulan[$data->bulan], $bulan ) ){
                $bulan[] = $nama_bulan[$data->bulan];
                $total_arsip[] = 0;
            } 
            if( !in_array( $data->kategori, $kategori ) ) $kategori[] = $data->kategori;
        }
        foreach ($kategori as $kat) {
            $dataset[] = [
                'label'             => $kat,
                'backgroundColor'   => '',
                'pointRadius'       => false,
                'pointColor'        => '',
                'pointHighlightFill'=> '#fff',
                'data'              => $total_arsip,
            ];
        }
        foreach ($datas as $data) {
            $index = array_search($data->kategori, $kategori);
            $dataset[$index]['backgroundColor'] = $data->warna;
            $dataset[$index]['pointColor'] = $data->warna;
            if( count( $dataset[$index]['data'] ) == 1 ){
                $dataset[$index]['data'] = [$data->total_arsip];
            } else {
                $dataset[$index]['data'][$data->bulan-1] = $data->total_arsip;
            }
        }
        echo json_encode( [$dataset, $bulan] );
    }

    public function ambil_kategori()
    {
        echo json_encode( $this->kategori_model->kategori()->result() );
    }

    public function cetak_laporan()
    {
        if( !$_POST ) redirect( base_url('admin/dashboard') );
        $tanggal_awal = $this->input->post('mulai_tanggal_berkas');
        $tanggal_akhir = $this->input->post('akhir_tanggal_berkas');
        
        $results = $this->arsip_model->arsip_by_tanggal_berkas( $tanggal_awal, $tanggal_akhir )->result();
        if( !count( $results ) ){
            $this->session->set_flashdata('alert', 'error');
            $this->session->set_flashdata('message', 'Data Laporan Kosong!');
            return redirect( base_url('admin/dashboard') );
        }
        
        $datas = [];
        foreach ($results as $result) {
            if( isset( $datas[$result->kategori] ) ){
                if( isset( $datas[$result->kategori][$result->tanggal_berkas] ) ){
                    $datas[$result->kategori][$result->tanggal_berkas][] = $result;
                } else {
                    $datas[$result->kategori][$result->tanggal_berkas] = [$result];
                }
            }
             else {
                $datas[$result->kategori][$result->tanggal_berkas] = [$result];
            }
        }
        
        // panggil library yang kita buat sebelumnya yang bernama pdfgenerator
        $this->load->library('pdfgenerator');
        // title dari pdf
        $this->data['title_pdf'] = 'Laporan';
        // filename dari pdf ketika didownload
        $file_pdf = 'laporan';
        // setting paper
        $paper = 'A4';
        //orientasi paper potrait / landscape
        $orientation = "landscape";
        // data
        $this->data['datas'] = $datas;
		$html = $this->load->view('report/laporan',$this->data, true);	    
        
        // run dompdf
        $this->pdfgenerator->generate($html, $file_pdf,$paper,$orientation);
    }
}
