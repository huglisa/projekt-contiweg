var groupdocs_viewer_error_counter = 0;

$(document).ready(function(){
	loadFileTree();
});


function loadFileTree(){
	$('.aui-message').remove();
	groupdocs_keys_validation();
	
	var private_key = $('#privateKey').val();
	var user_id = $('#userId').val();
	
	var parent = $("#groupdocsBrowser");
	var container = $("#groupdocsBrowserInner", parent);
	
	var opts = {
		script: 'grpdocsviewer-dialog.php?page=tree&private_key=' + private_key + '&user_id=' + user_id,
		onTreeShow: function(){

		},
		onServerSuccess: function(){
			groupdocs_viewer_error_counter = 0;
			$("a", container).each(function() {
				var self = $(this);
				if(self.parent().hasClass("file")) {
					self.click(function(e){
						e.preventDefault();
						var docid = self.attr('rel');
						var width = parseInt(document.getElementById('width').value);
						var height = parseInt(document.getElementById('height').value);
						 
						embed(docid, width, height);
					})
				}
			});
		},
		onServerError: function(response) {
			groupdocs_viewer_error_counter += 1;
			if( groupdocs_viewer_error_counter < 3 ){
				loadFileTree();
			}
			else {
				var message = "Uh oh, looks like we are currently experiencing difficulties with our API, please be so kind as to drop an email to <a href='mailto:support@groupdocs.com'>support@groupdocs.com</a> to let them know, thanks or <a href='#' onclick='loadFileTree();return false'>click here</a> to try again.";
				parent.append($("<div class='aui-message warning'>" + message + "</div>"));
			}
		}
	};
	container.fileTree(opts);
}

function groupdocs_keys_validation() {
	var private_key = $('#privateKey');
	var user_id = $('#userId');
	var error_massage = $('#groupdocs_keys_error');
	var enpty_felds = $('#enpty_felds');
    var incorrect_felds = $('#incorrect_felds');
    var upload = $('#upload');
    var embed = $('#embed')
    var errors = 0;

    embed.show();
    upload.show();
    incorrect_felds.hide();
    enpty_felds.hide();
	error_massage.hide();
	private_key.removeClass('error');
	user_id.removeClass('error');

	if( private_key.val() == '' ) {
		private_key.addClass('error');
		errors += 1;
	}
	if( user_id.val() == '') {
		user_id.addClass('error');
		errors += 1;
	}

	if( errors != 0 ) {
		$('#groupdocs_keys_error').show();
        $('#enpty_felds').show();
        $('#incorrect_felds').show();
        $('#upload').hide();
        $('#embed').hide();
	}
}

function submit_groupdocs_link(){
	var docid = $('#docid').val();
	var height = $('#height').val();
	var width = $('#width').val();
	
	embed(docid, width, height);
}
