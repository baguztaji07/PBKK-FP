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
        var dosen = $(this).data('dosen');
        $(".modal-body #dosenInput").val( NIP );
   });
    
    $(document).on("click", ".openProfileDosen", function () {
        $(".modal-header #tittle").text("Profil Dosen");
    	
        var nama = $(this).data('nama');
        $(".modal-body #nama").text("Nama: "+nama );

        var NIP = $(this).data('nip');
        $(".modal-body #NIPorNRP").text("NIP: "+ NIP );
        
        var email = $(this).data('email');
        $(".modal-body #email").text("Email: "+ email );
        var noTelp = $(this).data('no');
        $(".modal-body #noTelp").text("Nomor Telepon: "+ noTelp );
   });
    $(document).on("click", ".openUserProfile", function () {
        $(".modal-header #tittle").text("Profil Mahasiswa");
    	
        var nama = $(this).data('nama');
        $(".modal-body #nama").text("Nama: "+nama );

        var NRP = $(this).data('nrp');
        $(".modal-body #NIPorNRP").text("NRP: "+ NRP );
        
        var email = $(this).data('email');
        $(".modal-body #email").text("Email: "+ email );
   });
});

