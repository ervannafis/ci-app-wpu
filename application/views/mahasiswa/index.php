<div class="container">

	<div class="flash-data" data-flashdata="<?= $this->session->flashdata('flash'); ?>"></div>
	<?php if ( $this->session->flashdata('flash')) : ?>
	<!-- <div class="row mt-3">
		<div class="col-md-6">
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				Data Mahasiswa <strong>berhasil</strong><?= $this->session->flashdata('flash'); ?>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</div>
	</div> -->


<?php endif; ?>

<h3 class="mt-3">Daftar Mahasiswa</h3>

<div class="row">
	<div class="col-md-5">
		<form action="<?= base_url('mahasiswa');  ?>" method="post">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search keyword" name="keyword" autocomplete="off" autofocus>
				<div class="input-group-append">
					<input class="btn btn-primary" type="submit" name="submit">
				</div>
			</div>
		</form>
	</div>
</div>

<div class="row mt-3">
	<div class="col-md-6">
		<a href="<?= base_url(); ?>mahasiswa/tambah" class="btn btn-primary">Tambah Data Mahasiswa</a>
	</div>
</div>

<div class="row">
		<div class="col-md-10">
			<h5>Results : <?= $total_rows; ?></h5>
			<table class="table">
				<thead>
					<tr>
						<th>No.</th>
						<th>Nama</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php if (empty($mahasiswa)) : ?>
						<tr>
							<td colspan="4"><div class="alert alert-danger" role="alert">
								Data not found.
							</div></td>
						</tr>
					<?php endif; ?>
					<?php foreach ($mahasiswa as $mhs) : ?>
						<tr>
							<th><?= ++$start; ?></th>
							<td><?= $mhs['nama']; ?></td>
							<td><?= $mhs['email']; ?></td>
							<td>
								<a href="<?= base_url(); ?>mahasiswa/detail/<?= $mhs['id']; ?>" class="badge badge-warning">detail</a>
								<a href="<?= base_url(); ?>mahasiswa/ubah/<?= $mhs['id']; ?>" class="badge badge-success">edit</a>
								<a href="<?= base_url(); ?>mahasiswa/hapus/<?= $mhs['id']; ?>" class="badge badge-danger tombol-hapus">delete</a>
								<td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
					<?= $this->pagination->create_links(); ?>
				</div>
			</div>

<!-- <div class="row mt-3">
	<div class="col-md-6">
		<?php if (empty($mahasiswa)) : ?>
			<div class="alert alert-danger" role="alert">
				Data mahasiswa tidak ditemukan.
			</div>
		<?php endif; ?>
		<ul class="list-group">
			<?php foreach( $mahasiswa as $mhs) : ?>
				<li class="list-group-item"><?= $mhs['nama']; ?>
				<a href="<?= base_url(); ?>/mahasiswa/hapus/<?= $mhs['id']; ?>" class="badge badge-danger float-right tombol-hapus">Hapus</a>
				<a href="<?= base_url(); ?>mahasiswa/ubah/<?= $mhs['id']; ?>" class="badge badge-success float-right">Ubah</a>
				<a href="<?= base_url(); ?>mahasiswa/detail/<?= $mhs['id']; ?>" class="badge badge-primary float-right">Detail</a>
			</li>
		<?php endforeach; ?>
	</ul>
</div>
</div> -->
</div>