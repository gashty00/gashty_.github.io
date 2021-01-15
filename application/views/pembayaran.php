<div class="container-fluid">
	<div class="row">
		<dic class="col-md-2"></dic>
		<dic class="col-md-8">
			<div class="btn btn-sm btn-success">
				<?php 
				$grand_total = 0;
				if ($keranjang = $this->cart->contents())
				{
					foreach ($keranjang as $items)
					{
						$grand_total = $grand_total + $items['subtotal'];
					}

				echo "<h6>Total Belanja Anda : Rp. ".number_format($grand_total,0,',','.');
				 ?>
			</div><br><br>

			<h3>Input Alamat Pengiriman</h3>

			<form action="<?php echo base_url('dashboard/proses_pesanan'); ?>" method="post">

				<div class="form-froup">
					<label>Nama Lengkap</label>
					<input type="text" name="nama" placeholder="Nama Lengkap Anda" class="form-control">
				</div>

				<div class="form-froup">
					<label>Alamat Lengkap</label>
					<input type="text" name="alamat" placeholder="Alamat Lengkap Anda" class="form-control">
				</div>

				<div class="form-froup">
					<label>No Telp</label>
					<input type="text" name="no_tlp" placeholder="No Telepon Anda" class="form-control">
				</div>

				<div class="form-froup">
					<label>Jasa Pengiriman</label>
					<select class="form-control">
						<option>JNE</option>
						<option>TIKI</option>
						<option>J&T</option>
						<option>GRAB</option>
						<option>GO-SEND</option>
					</select>
				</div>

				<div class="form-froup">
					<label>Bank</label>\
					<select class="form-control">
						<option>BRI - xxxxxx</option>
						<option>BCA - xxxxxx</option>
						<option>BNI - xxxxxx</option>
						<option>MEGA - xxxxxx</option>
						<option>MANDIRI - xxxxxx</option>
					</select>
				</div>

				<button type="submit" class="btn -btn-sm btn-primary mt-3">Pesan</button>
				
			</form>

			<?php  
		} else
		{
			echo "<h4>Keranjang Belanja Anda Kosong";
		}
			
			?>
		</div>


		<dic class="col-md-2"></dic>
	</div>
</div>