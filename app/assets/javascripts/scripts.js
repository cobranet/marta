function showPitanje(num){
    $.ajax({
	url: '/pitanjas/' + num,
	data: { pitanje: num },
	type: 'get'}).
	done( function(data) {
	    var $textAndPic = $('<div id="dialog-body"></div>');
	    $textAndPic.append("<h2>" +data.pitanje+ '</h2><br />');
	    $textAndPic.append('<img id="dlg-pic" src="./assets/mojamarta.png"/>');
	    $textAndPic.append('<input id="odg" class="pitanjecl form-control" type="text" name="odgovor">');
	    BootstrapDialog.show({
		title: 'Zagonetka',
		message: $textAndPic,
		cssClass: 'pitdlg',
		buttons: [{
                    label: 'OK',
		    cssClass: 'button  btn-lg',
                    action: function(dialogRef){
			$.ajax({
			    url:'/odgovor',
			    type: 'GET',
			    data: { odgovor: $('#odg').val(),
				    pitanje: num}
			} ).
			done( function(data){
			      alert(data.rez);
		    });
                    dialogRef.close();
                    }
            }]
        });
});
        
};

  $(document).ready(function() {
    $('.carousel').carousel({
      interval: 0
    });
    $('#marta').click(function(){
	showPitanje(1);
	});
    $('#klara').click(function(){
	showPitanje(2);
	});

      $(document).ajaxSend(function(event, request, settings) {
    if ( settings.type == 'POST' ||  settings.type == 'post') {
        settings.data = (settings.data ? settings.data + "&" : "")
            + "authenticity_token=" + encodeURIComponent( window._token );
    }
      });

  });

   
