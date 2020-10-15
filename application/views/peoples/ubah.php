<div class="container">
	<div class="row mt-3">
		<div class="col-md-6">

			<div class="card">
				<div class="card-header">
					Form Edit Peoples
				</div>
				<div class="card-body">
					<form action="" method="post">
						<input type="hidden" name="id" value="<?= $peoples['id']; ?>">
						<div class="form-group">
							<label for="name">Name</label>
							<input type="text" class="form-control" id="name" name="name" value="<?= $peoples['name']; ?>">
							 <small class="form-text text-danger"><?= form_error('name'); ?></small>
						</div>
						<div class="form-group">
							<label for="address">Address</label>
							<input type="text" class="form-control" id="address" name="address" value="<?= $peoples['address']; ?>">
							<small class="form-text text-danger"><?= form_error('address'); ?></small>
						</div>
						<div class="form-group">
							<label for="email">Email</label>
							<input type="email" class="form-control" id="email" name="email" value="<?= $peoples['email']; ?>">
							<small class="form-text text-danger"><?= form_error('email'); ?></small>
						</div>
						<button type="submit" name="ubah" class="btn btn-primary float-right">Edit Data</button>
					</form>
				</div>
			</div>
			
		</div>
		
	</div>
	

</div>