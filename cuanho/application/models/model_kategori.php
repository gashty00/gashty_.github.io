<?php 

class Model_kategori extends CI_Model{
	public function data_kaos(){
		return $this->db->get_where("tb_barang",array('kategori' => 'kaos'));
	}

	public function data_tshirt(){
		return $this->db->get_where("tb_barang",array('kategori' => 'T-Shirt'));
	}

	public function data_topi(){
		return $this->db->get_where("tb_barang",array('kategori' => 'topi'));
	}

	public function data_sale(){
		return $this->db->get_where("tb_barang",array('kategori' => 'sale'));
	}

	public function data_profile(){
		return $this->db->get_where("tb_barang",array('kategori' => 'profile'));
	}
}