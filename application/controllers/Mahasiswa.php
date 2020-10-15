<?php

class Mahasiswa extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Mahasiswa_model');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['judul'] = 'Daftar Mahasiswa';
        // $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
        // if( $this->input->post('keyword') ) {
        //     $data['mahasiswa'] = $this->Mahasiswa_model->cariDataMahasiswa();
        // }

		$this->load->model('Mahasiswa_model', 'mhs');

        //PAGINATION
		$this->load->library('pagination');
		//ambil data keyword
		if($this->input->post('submit')){
			$data['keyword'] = $this->input->post('keyword');
			$this->session->set_userdata('keyword', $data['keyword']);
		} else{
			$data['keyword'] = $this->session->userdata('keyword');
		}

		$this->db->like('nama', $data['keyword']);
		$this->db->or_like('nim', $data['keyword']);
		$this->db->or_like('email', $data['keyword']);
		$this->db->or_like('jurusan', $data['keyword']);
		$this->db->from('mahasiswa');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 8;
		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$data['mahasiswa'] = $this->mhs->getMahasiswa($config['per_page'],  $data['start'], $data['keyword']);

		$this->load->view('templates/header', $data);
		$this->load->view('mahasiswa/index', $data);
		$this->load->view('templates/footer');
	}


	public function tambah(){
		$data['judul'] = 'Form Tambah Data Mahasiswa';
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('nim', 'NIM', 'required|numeric');
		$this->form_validation->set_rules('email', 'email', 'required|valid_email');
		
		if ( $this->form_validation->run() == FALSE) {
			$this->load->view('templates/header', $data);
			$this->load->view('mahasiswa/tambah');
			$this->load->view('templates/footer');
		} else {
			$this->Mahasiswa_model->tambahDataMahasiswa();
			$this->session->set_flashdata('flash', 'ditambahkan');
			redirect('mahasiswa');
		}
	}

	public function hapus($id){
		$this->Mahasiswa_model->hapusDataMahasiswa($id);
		$this->session->set_flashdata('flash', 'dihapus');
		redirect('mahasiswa');
	}

	public function detail($id){
		$data['judul'] = 'Detail Data Mahasiswa';
		$data['mahasiswa'] = $this->Mahasiswa_model->getMahasiswaById($id);
		$this->load->view('templates/header', $data);
		$this->load->view('mahasiswa/detail', $data);
		$this->load->view('templates/footer');
	}

	public function ubah($id){
		$data['judul'] = 'Form Ubah Data Mahasiswa';
		$data['mahasiswa'] = $this->Mahasiswa_model->getMahasiswaById($id);
		$data['jurusan'] = ['Teknik Informatika', 'Teknik Elektro', 'Teknik Industri', 'Teknik Kimia', 'Teknik Lingkungan'];

		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('nim', 'NIM', 'required|numeric');
		$this->form_validation->set_rules('email', 'email', 'required|valid_email');
		
		if ( $this->form_validation->run() == FALSE) {
			$this->load->view('templates/header', $data);
			$this->load->view('mahasiswa/ubah', $data);
			$this->load->view('templates/footer');
		} else {
			$this->Mahasiswa_model->ubahDataMahasiswa();
			$this->session->set_flashdata('flash', 'diubah');
			redirect('mahasiswa');
		}
	}
}