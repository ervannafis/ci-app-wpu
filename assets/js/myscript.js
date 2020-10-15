const flashData = $('.flash-data').data('flashdata');

if (flashData){
	Swal.fire({
		title: 'Data mahasiswa',
		text: 'berhasil ' + flashData,
		icon: 'success' 
	});
}

$('.tombol-hapus').on('click', function(e){
	e.preventDefault();
	const href = $(this).attr('href');

	Swal.fire({
  title: 'Apakah Anda Yakin?',
  text: "Data mahasiswa akan dihapus!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Hapus Data'
}).then((result) => {
  if (result.isConfirmed) {
    document.location.href = href;
  }
})

});

const flashData1 = $('.flash-data-peoples').data('flashdata');

if (flashData1){
  Swal.fire({
    title: 'Peoples',
    text: 'already ' + flashData1,
    icon: 'success' 
  });
}

$('.tombol-hapus-peoples').on('click', function(e){
  e.preventDefault();
  const href = $(this).attr('href');

  Swal.fire({
  title: 'Are You Sure?',
  text: "People will be delete!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Delete Data'
}).then((result) => {
  if (result.isConfirmed) {
    document.location.href = href;
  }
})

});