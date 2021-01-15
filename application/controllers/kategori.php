<?php 

class Kategori extends CI_Controller{
	public function kaos()
	{
		$data['kaos'] = $this->model_kategori->data_kaos()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('kaos', $data);
		$this->load->view('templates/footer');
	}

	public function tshirt()
	{
		$data['tshirt'] = $this->model_kategori->data_tshirt()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('tshirt', $data);
		$this->load->view('templates/footer');
	}

	public function topi()
	{
		$data['topi'] = $this->model_kategori->data_topi()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('topi', $data);
		$this->load->view('templates/footer');
	}

	public function sale()
	{
		$data['sale'] = $this->model_kategori->data_sale()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('sale', $data);
		$this->load->view('templates/footer');
	}

	public function profile()
	{
		$data['profile'] = $this->model_kategori->data_profile()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('profile', $data);
		$this->load->view('templates/footer');
	}
}