import $ from 'jquery';

class MyNotes {
	constructor() {
		this.events();

	}

	events() {
		//event listener for DELETE BUTTON in parent <ul> list
		$("#my-notes").on("click", ".delete-note", this.deleteNote);
		//event listener for EDIT BUTTON
		$("#my-notes").on("click", ".edit-note", this.editNote.bind(this));
		//event listener for SAVE BUTTON
		$("#my-notes").on("click", ".update-note", this.updateNote.bind(this));
		//event listener for CREATE NOTE
		$(".submit-note").on("click", this.createNote.bind(this));


	}

	//Custom Methods will go here
	editNote(e) {
		//targets button that was clicked - looks for li element to access note ID
		let thisNote = $(e.target).parents("li")

		// alternate
		if (thisNote.data("state") == "editable") {
			//make read only
			this.makeNoteReadOnly(thisNote);

		} else {
			//make editable
			this.makeNoteEditable(thisNote);
		}
		
	}


	makeNoteEditable(thisNote) {
		//changes edit button to say cancel
		thisNote.find(".edit-note").html('<i class="fa fa-times" aria-hidden="true"> Cancel</i>')

		//removes 'readonly' fields
		thisNote.find(".note-title-field, .note-body-field").removeAttr("readonly").addClass("note-active-field");
		thisNote.find(".update-note").addClass("update-note--visible");

		//adding attribute called state equal to editable
		thisNote.data("state", "editable")
	}

	makeNoteReadOnly(thisNote) {
		//changes cancel button to say edit
		thisNote.find(".edit-note").html('<i class="fa fa-pencil" aria-hidden="true"> Edit</i>')

		//adding 'readonly' attribute and setting it to readonly
		thisNote.find(".note-title-field, .note-body-field").attr("readonly", "readonly").removeClass("note-active-field");
		
		//removes blue save button
		thisNote.find(".update-note").removeClass("update-note--visible");
		thisNote.data("state", "cancel")

	}

	deleteNote(e) {
		//targets button that was clicked - looks for li element to access note ID
		let thisNote = $(e.target).parents("li")

		$.ajax({
			beforeSend: (xhr) => {
				//all modernBrowsers have setRequestHeader() call
				xhr.setRequestHeader('X-WP-Nonce', universityData.nonce);
			},
			//this will access the data-id from li element
			url: universityData.root_url + '/wp-json/wp/v2/note/' + thisNote.data('id'), // url to access
			type: 'DELETE', // type of request we are sending

			// function to run if request is a success
			success: (response) => { 
				thisNote.slideUp()
				console.log("Congrats");
				console.log(response);
				if (response.userNoteCount < 5){
					$(".note-limit-message").removeClass("active");
				}
			}, 
			
			// function to run if request fails
			error: (response) => {
				console.log("Sorry");
				console.log(response);
			}, 
		});
	}

		updateNote(e) {
		let thisNote = $(e.target).parents("li")

		//match REST API parameters & get data
		let ourUpdatedPost = {
			'title': thisNote.find(".note-title-field").val(),
			'content': thisNote.find(".note-body-field").val()
		}

		$.ajax({
			beforeSend: (xhr) => {
				xhr.setRequestHeader('X-WP-Nonce', universityData.nonce);
			},
			url: universityData.root_url + '/wp-json/wp/v2/note/' + thisNote.data('id'), 
			type: 'POST', 
			data: ourUpdatedPost, //new content
			success: (response) => {
				this.makeNoteReadOnly(thisNote);
				console.log("Congrats");
				console.log(response);
			}, 
			error: (response) => {
				console.log("Sorry");
				console.log(response);
			}, 
		});
	}

		createNote(e) {

		//match REST API parameters & get data
		let ourNewPost = {
			'title': $(".new-note-title").val(),
			'content': $(".new-note-body").val(),
			'status': 'publish'
		}

		$.ajax({
			beforeSend: (xhr) => {
				xhr.setRequestHeader('X-WP-Nonce', universityData.nonce);
			},
			url: universityData.root_url + '/wp-json/wp/v2/note/', 
			type: 'POST', 
			data: ourNewPost, //new content
			success: (response) => {
				//empty new note form
				$(".new-note-title, .new-note-body").val('');

				//add new note to parent <ul> list with id #my-notes, hide initially then slide down
				$(`
					<li data-id="${response.id}"">
            		<input readonly class="note-title-field" value="${response.title.raw}">
            		<span class="edit-note"><i class="fa fa-pencil" aria-hidden="true"> Edit</i></span>
            		<span class="delete-note"><i class="fa fa-trash-o" aria-hidden="true"> Delete</i></span>
            		<textarea readonly class="note-body-field">${response.content.raw}</textarea>
            		<span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" aria-hidden="true"> Save</i></span>
          			</li>
					`).prependTo("#my-notes").hide().slideDown();

				console.log("Congrats");
				console.log(response);
			}, 
			error: (response) => {
				if(response.responseText == "\nYou have reached your note limit."){
					$(".note-limit-message").addClass("active");
				}
				console.log("Sorry");
				console.log(response);
			}, 
		});
	}
	
}

export default MyNotes;