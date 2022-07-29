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
        $data = $this->arsip_model->grafik_pertahun()->result();
        echo json_encode( $data );
    }
}
