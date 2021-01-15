<body class="bg-gradient-info">

  <div class="container text-center">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-5 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">FORM LOGIN</h1>
                  </div>
                  <?php echo $this->session->flashdata('pesan') ?>
                  <form method="post" action="<?php echo base_url('auth/login') ?>" class="user">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Username" name="username">
                      <?php echo form_error('username', '<div class="text-danger small ml-3">','</div'); ?>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" name="password">
                      <?php echo form_error('password', '<div class="text-danger small ml-3">','</div'); ?>
                    </div>
                    <button type="submit" class="btn btn-primary form-control">Login</button>
                  </form>
                  <hr>
                  <div class="text-center">
                    <h6 class="small text-primary">Belum Punya Akun?<h6>
                  </div>
                  <div class="text-center">
                    <a href="<?php echo base_url('registrasi/index'); ?>" class="badge badge-primary">Daftar Kuy</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <img src="<?php echo base_url('assets/img/cuanho.png') ?>" class="text-center" width="50%">

      </div>

    </div>

  </div>

</html>
