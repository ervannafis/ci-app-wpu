<?php

class Peoples extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Peoples_model');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['judul'] = 'List of Peoples';

		$this->load->model('Peoples_model', 'people');

        //PAGINATION
		$this->load->library('pagination');
		//ambil data keyword
		if($this->input->post('submit')){
			$data['keyword'] = $this->input->post('keyword');
			$this->session->set_userdata('keyword', $data['keyword']);
		} else{
			$data['keyword'] = $this->session->userdata('keyword');
		}




		// $config['base_url'] = 'http://localhost/ci-app/peoples/index';
		$this->db->like('name', $data['keyword']);
		$this->db->or_like('address', $data['keyword']);
		$this->db->or_like('email', $data['keyword']);
		$this->db->from('peoples');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 8;
		// $config['num_links'] = 3;

		// $config['full_tag_open'] = '<nav>
		// <ul class="pagination justify-content-center"';
		// $config['full_tag_close'] = '</ul>
		// </nav>';
		// $config['first_link'] = 'First';
		// $config['first_tag_open'] = '<li class="page-item">';
		// $config['first_tag_close'] = '</li>';

		// $config['last_link'] = 'Last';
		// $config['last_tag_open'] = '<li class="page-item">';
		// $config['last_tag_close'] = '</li>';

		// $config['next_link'] = '&raquo';
		// $config['next_tag_open'] = '<li class="page-item">';
		// $config['next_tag_close'] = '</li>';

		// $config['prev_link'] = '&laquo';
		// $config['prev_tag_open'] = '<li class="page-item">';
		// $config['prev_tag_close'] = '</li>';

		// $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
		// $config['cur_tag_close'] = '</a></li>';

		// $config['num_tag_open'] = '<li class="page-item">';
		// $config['num_tag_close'] = '</li>';

		// $config['attributes'] = array('class' => 'page-link');

		$this->pagination->initialize($config);

		$data['start'] = $this->uri->segment(3);
		$data['peoples'] = $this->people->getPeoples($config['per_page'],  $data['start'], $data['keyword']);

		$this->load->view('templates/header', $data);
		$this->load->view('peoples/index', $data);
		$this->load->view('templates/footer');
	}

	public function tambah(){
		$data['judul'] = 'Form Add Peoples';
		$this->form_validation->set_rules('name', 'Name', 'required');
		$this->form_validation->set_rules('address', 'address', 'required');
		$this->form_validation->set_rules('email', 'email', 'required|valid_email');
		
		if ( $this->form_validation->run() == FALSE) {
		$this->load->view('templates/header', $data);
		$this->load->view('peoples/tambah');
		$this->load->view('templates/footer');
	} else {
		$this->Peoples_model->tambahDataPeoples();
		$this->session->set_flashdata('flash', 'added');
		redirect('peoples');
	}
	}

	public function detail($id){
		$data['judul'] = 'Detail Peoples';
		$data['peoples'] = $this->Peoples_model->getPeoplesById($id);
		$this->load->view('templates/header', $data);
		$this->load->view('peoples/detail', $data);
		$this->load->view('templates/footer');
	}

	public function ubah($id){
		$data['judul'] = 'Form Edit Peoples';
		$data['peoples'] = $this->Peoples_model->getPeoplesById($id);

		$this->form_validation->set_rules('name', 'Name', 'required');
		$this->form_validation->set_rules('address', 'address', 'required');
		$this->form_validation->set_rules('email', 'email', 'required|valid_email');
		
		if ( $this->form_validation->run() == FALSE) {
		$this->load->view('templates/header', $data);
		$this->load->view('peoples/ubah', $data);
		$this->load->view('templates/footer');
	} else {
		$this->Peoples_model->ubahDataPeoples();
		$this->session->set_flashdata('flash', 'edited');
		redirect('peoples');
	}
	}

	public function hapus($id){
		$this->Peoples_model->hapusDataPeoples($id);
		$this->session->set_flashdata('flash', 'deleted');
		redirect('peoples');
	}

}