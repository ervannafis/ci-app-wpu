<?php

/**
 * 
 */
class Home extends CI_Controller
{
	
	public function index($nama = 'Muhammad Ervan Nafis Yuniagy.')
	{
		$data['judul'] = 'Halaman Home';
		$data['nama'] = $nama;
		$this->load->view('templates/header', $data);
		$this->load->view('home/index');
		$this->load->view('templates/footer');
	}

	public function about()
	{
		$data['judul'] = 'Halaman About';
		$this->load->view('templates/header', $data);
		$this->load->view('home/about');
		$this->load->view('templates/footer');
	}
}