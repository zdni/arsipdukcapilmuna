<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends Staff_Controller {
	
	function __construct()
	{
        parent::__construct();
        $this->load->model([
            'kategori_model',
        ]);
        $this->data['menu_id'] = 'kategori_index';
	}

	public function index()
    {
        $this->data['datas'] = $this->kategori_model->kategori()->result();
        $this->data['page'] = 'Kategori';
        $this->render('admin/kategori');
    }

    public function tambah()
    {
        $this->form_validation->set_rules('nama', 'Nama kategori', 'required');
        $this->form_validation->set_rules('warna', 'Warna Label', 'required');

        $alert = 'error';
        $message = 'Gagal Menambah Data kategori Baru! <br> Silahkan isi semua inputan!';
        if ( $this->form_validation->run() )
        {
            $nama = $this->input->post('nama');
            $warna = $this->input->post('warna');

            $data['nama'] = $nama;
            $data['warna'] = $warna;
        
            if( $this->kategori_model->tambah( $data ) )
            {
                $alert = 'success';
                $message = 'Berhasil Membuat kategori Baru!';
            } else {
                $message = 'Gagal Membuat kategori Baru!';
            }
        }

        $this->session->set_flashdata('alert', $alert);
        $this->session->set_flashdata('message', $message);
        return redirect( base_url('admin/kategori') );
    }

    public function ubah()
    {
        $this->form_validation->set_rules('nama', 'Nama kategori', 'required');
        $this->form_validation->set_rules('warna', 'Warna Label', 'required');

        $alert = 'error';
        $message = 'Gagal Mengubah Data kategori Baru! <br> Silahkan isi semua inputan!';
        if ( $this->form_validation->run() )
        {
            $id = $this->input->post('id');
            $nama = $this->input->post('nama');
            $warna = $this->input->post('warna');

            $data['nama'] = $nama;
            $data['warna'] = $warna;
        
            if( $this->kategori_model->ubah( $id, $data ) )
            {
                $alert = 'success';
                $message = 'Berhasil Mengubah kategori!';
            } else {
                $message = 'Gagal Mengubah kategori!';
            }
        }

        $this->session->set_flashdata('alert', $alert);
        $this->session->set_flashdata('message', $message);
        return redirect( base_url('admin/kategori') );
    }

    public function hapus()
    {
        if( !$_POST ) return redirect( base_url('admin/kategori') );

        $alert = 'error';
        $message = 'Gagal Menghapus kategori!';

        $this->form_validation->set_rules('id', 'Id kategori', 'required');
        if( $this->form_validation->run() )
        {
            $id = $this->input->post('id');
            if( $this->kategori_model->hapus( $id ) )
            {
                $alert = 'success';
                $message = 'Berhasil Menghapus kategori!';
            }
        }
        
        $this->session->set_flashdata('alert', $alert);
        $this->session->set_flashdata('message', $message);
        return redirect( base_url('admin/kategori') );
    }
}
