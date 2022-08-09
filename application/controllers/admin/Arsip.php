<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Arsip extends Staff_Controller {
	
	function __construct()
	{
        parent::__construct();
        $this->load->model([
            'kategori_model',
            'arsip_model',
        ]);
		$this->load->library('upload');
        $this->data['menu_id'] = 'arsip_index';
        $this->db->query(
            'SET SESSION sql_mode =
            REPLACE(REPLACE(REPLACE(
            @@sql_mode,
            "ONLY_FULL_GROUP_BY,", ""),
            ",ONLY_FULL_GROUP_BY", ""),
            "ONLY_FULL_GROUP_BY", "")'
        );
        $this->load->library('BerryRavindran');
        $this->berryRavindran = new BerryRavindran;
	}

	public function index()
    {
        $k = ( $this->input->get('k') !== NULL ) ? $this->input->get('k') : '';
        $f = ( $this->input->get('f') !== NULL ) ? $this->input->get('f') : '';
        $arsip = $this->arsip_model->arsip()->result();
        if( $k && $f ){
            $hasil = $this->berryRavindran->search( $k, $f, $arsip );
            $arsip = $hasil[0];
            $execution_time = $hasil[1];
            $this->data['execution_time'] = $execution_time;
        }
        
        $this->data['kategori'] = $this->kategori_model->kategori()->result();
        $this->data['datas'] = $arsip;
        $this->data['fields'] = $this->db->list_fields('arsip');
        $this->data['k'] = $k;
        $this->data['f'] = $f;
        
        $this->data['page'] = 'Arsip';
        $this->render('admin/arsip');
    }

    public function detail( $id = NULL )
    {
        if( !$id ) redirect( base_url('admin/arsip') );
        $this->data['data'] = $this->arsip_model->arsip( $id )->row();

        $this->data['page'] = 'Detail Arsip';
        $this->render('admin/detail-arsip');
    }

    public function form( $id = NULL )
    {
        $form = $this->input->get('form');
        $this->data['kategori'] = $this->kategori_model->kategori()->result();
        ( $id ) ? $this->data['data'] = $this->arsip_model->arsip( $id )->row() : $this->data['data'] = [];
        
        $this->data['form'] = $form;
        $this->data['page'] = ucwords($form) . ' Data Arsip';
        $this->render('admin/form-arsip');
    }

    public function tambah()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nik', 'NIK', 'required');
        $this->form_validation->set_rules('tempat_lahir', 'Tempat Lahir', 'required');
        $this->form_validation->set_rules('tanggal_lahir', 'Tanggal Lahir', 'required');
        $this->form_validation->set_rules('nama_ayah', 'Nama Ayah', 'required');
        $this->form_validation->set_rules('nama_ibu', 'Nama Ibu', 'required');
        $this->form_validation->set_rules('pelapor', 'Nama Pelapor', 'required');
        $this->form_validation->set_rules('tanggal_berkas', 'Tanggal Berkas', 'required');
        $this->form_validation->set_rules('tanggal_ambil', 'Tanggal Ambil', 'required');

        $alert = 'error';
        $message = 'Gagal Menambah Data Arsip Baru! <br> Silahkan isi semua inputan!';
        if ( $this->form_validation->run() )
        {
            $nama           = $this->input->post('nama');
            $nik            = $this->input->post('nik');
            $tempat_lahir   = $this->input->post('tempat_lahir');
            $tanggal_lahir  = $this->input->post('tanggal_lahir');
            $nama_ayah      = $this->input->post('nama_ayah');
            $nama_ibu       = $this->input->post('nama_ibu');
            $pelapor        = $this->input->post('pelapor');
            $tanggal_berkas = $this->input->post('tanggal_berkas');
            $tanggal_ambil  = $this->input->post('tanggal_ambil');
            $keterangan     = $this->input->post('keterangan');
            $kategori_id    = $this->input->post('kategori_id');
            $file           = $this->input->post('file');

            $data['nama']           = $nama;
            $data['tempat_lahir']   = $tempat_lahir;
            $data['tanggal_lahir']  = $tanggal_lahir;
            $data['nama_ayah']      = $nama_ayah;
            $data['nama_ibu']       = $nama_ibu;
            $data['pelapor']        = $pelapor;
            $data['tanggal_berkas'] = $tanggal_berkas;
            $data['tanggal_ambil']  = $tanggal_ambil;
            $data['keterangan']     = $keterangan;
            $data['kategori_id']    = $kategori_id;

            if( $_FILES['file']['name'] ) {
                $uploaded_data = $this->upload_file( $nama . ' ' . time()  );
                $file = $uploaded_data['file_name'];
                $data['file']       = $file;
                
                if( $this->arsip_model->tambah( $data ) )
                {
                    $alert = 'success';
                    $message = 'Berhasil Membuat Arsip Baru!';
                } else {
                    $message = 'Gagal Membuat Arsip Baru!';
                }
            } else {
                $message = 'Gagal Membuat Arsip Baru! Silahkan Upload File Berkas';
            }

        }

        $this->session->set_flashdata('alert', $alert);
        $this->session->set_flashdata('message', $message);
        return redirect( base_url('admin/arsip') );
    }

    public function ubah()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nik', 'NIK', 'required');
        $this->form_validation->set_rules('tempat_lahir', 'Tempat Lahir', 'required');
        $this->form_validation->set_rules('tanggal_lahir', 'Tanggal Lahir', 'required');
        $this->form_validation->set_rules('nama_ayah', 'Nama Ayah', 'required');
        $this->form_validation->set_rules('nama_ibu', 'Nama Ibu', 'required');
        $this->form_validation->set_rules('pelapor', 'Nama Pelapor', 'required');
        $this->form_validation->set_rules('tanggal_berkas', 'Tanggal Berkas', 'required');
        $this->form_validation->set_rules('tanggal_ambil', 'Tanggal Ambil', 'required');

        $alert = 'error';
        $message = 'Gagal Mengubah Data Arsip! <br> Silahkan isi semua inputan!';
        if ( $this->form_validation->run() )
        {
            $id             = $this->input->post('id');
            $nama           = $this->input->post('nama');
            $nik            = $this->input->post('nik');
            $tempat_lahir   = $this->input->post('tempat_lahir');
            $tanggal_lahir  = $this->input->post('tanggal_lahir');
            $nama_ayah      = $this->input->post('nama_ayah');
            $nama_ibu       = $this->input->post('nama_ibu');
            $pelapor        = $this->input->post('pelapor');
            $tanggal_berkas = $this->input->post('tanggal_berkas');
            $tanggal_ambil  = $this->input->post('tanggal_ambil');
            $keterangan     = $this->input->post('keterangan');
            $kategori_id    = $this->input->post('kategori_id');
            $file           = $this->input->post('file');

            $data['nama']           = $nama;
            $data['tempat_lahir']   = $tempat_lahir;
            $data['tanggal_lahir']  = $tanggal_lahir;
            $data['nama_ayah']      = $nama_ayah;
            $data['nama_ibu']       = $nama_ibu;
            $data['pelapor']        = $pelapor;
            $data['tanggal_berkas'] = $tanggal_berkas;
            $data['tanggal_ambil']  = $tanggal_ambil;
            $data['keterangan']     = $keterangan;
            $data['kategori_id']    = $kategori_id;
            
            if( $_FILES['file']['name'] ) {
                $uploaded_data = $this->upload_file( $nama . ' ' . time()  );
                $file = $uploaded_data['file_name'];
                $data['file']       = $file;
            }
        
            if( $this->arsip_model->ubah( $id, $data ) )
            {
                $alert = 'success';
                $message = 'Berhasil Mengubah Data Arsip!';
            } else {
                $message = 'Gagal Mengubah Data Arsip!';
            }
        }
        
        $this->session->set_flashdata('alert', $alert);
        $this->session->set_flashdata('message', $message);
        return redirect( base_url('admin/arsip') );
    }

    public function hapus()
    {
        if( !$_POST ) return redirect( base_url('admin/arsip') );

        $alert = 'error';
        $message = 'Gagal Menghapus Arsip!';

        $this->form_validation->set_rules('id', 'Id Arsip', 'required');
        if( $this->form_validation->run() )
        {
            $id = $this->input->post('id');
            if( $this->arsip_model->hapus( $id ) )
            {
                $alert = 'success';
                $message = 'Berhasil Menghapus Arsip!';
            }
        }
        
        $this->session->set_flashdata('alert', $alert);
        $this->session->set_flashdata('message', $message);
        return redirect( base_url('admin/arsip') );
    }

	public function upload_file( $title )
	{
		$config['upload_path']          = './uploads/dokumen/';
		$config['overwrite']            = true;
		$config['allowed_types']        = 'pdf';
		$config['max_size']             = 2048000;
		$config['file_name']			= strtolower($title);
        
		$this->upload->initialize( $config );
		if (!$this->upload->do_upload('file')) {
			$this->session->set_flashdata('alert', 'error');   
			$this->session->set_flashdata('message', $this->upload->display_errors());   
			return redirect( base_url('admin/arsip') );
		} else {
			$uploaded_data = $this->upload->data();
		}
		return $uploaded_data;
	}
}
