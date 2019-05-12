jQuery(function ($) {


	$("#close-sidebar").click(function() {
	  $(".page-wrapper").removeClass("toggled");
	});
	$("#show-sidebar").click(function() {
	  $(".page-wrapper").addClass("toggled");
	});
    $(".sendMessage").click(function () {
        $('#bookId').val($(this).data('id'));
        $('#addBookDialog').modal('show');
    });
    
    $(document).on("click", ".sendMessage", function () {
        var nama = $(this).data('nama');
        $(".modal-body #namaInput").val( nama );
        var NIP = $(this).data('nip');
        $(".modal-body #NIPInput").val( NIP );
   });
});

