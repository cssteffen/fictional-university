import $ from 'jquery';

class Like {
	constructor() {
		this.events(); //this will be called as soon as page loads, ready to listen
	}

	//event listeners
	events() {
	$(".like-box").on("click", this.ourClickDispatcher.bind(this));
	}


	//methods
	ourClickDispatcher(e){
		//points to relevent like box
		let currentLikeBox = $(e.target).closest(".like-box");

		//use attr method for fresh updated
		if(currentLikeBox.attr('data-exists') == 'yes') {
			this.deleteLike(currentLikeBox);
		} else {
			this.createLike(currentLikeBox);
		}

	}

	createLike(currentLikeBox) {
		//provide an object to send to the url
		$.ajax({ //add the namespace we used when we registerd the url

			//CREATES NONCE
			beforeSend: (xhr) => {
				//all modernBrowsers have setRequestHeader() call
				xhr.setRequestHeader('X-WP-Nonce', universityData.nonce);
			},

			url: universityData.root_url + '/wp-json/university/v1/manageLike',
			type: 'POST',
			data: {'professorId': currentLikeBox.data('professor')},
			success: (response) => {
				currentLikeBox.attr('data-exists', 'yes') // this will fill in the heart update data attribute
				
				//this will fetch the current 'like' count, converts string of text into number, base 10
				let likeCount = parseInt(currentLikeBox.find(".like-count").html(), 10);
				likeCount++;
				currentLikeBox.find(".like-count").html(likeCount);

				//updates data-like attribute
				currentLikeBox.attr("data-like", response)
				console.log(response);
			},
			error: (response)=>{
				console.log(response);
			}
		});
	}

	deleteLike(currentLikeBox) {
		//provide an object to send to the url
		$.ajax({ //add the namespace we used when we registerd the url
			
			//CREATES NONCE
			beforeSend: (xhr) => {
				//all modernBrowsers have setRequestHeader() call
				xhr.setRequestHeader('X-WP-Nonce', universityData.nonce);
			},
			url: universityData.root_url + '/wp-json/university/v1/manageLike',
			data: {'like': currentLikeBox.attr('data-like')},
			type: 'DELETE',
			success: (response) => {
				currentLikeBox.attr('data-exists', 'no') // this will fill in the heart update data attribute
				
				//this will fetch the current 'like' count, converts string of text into number, base 10
				let likeCount = parseInt(currentLikeBox.find(".like-count").html(), 10);
				likeCount--;
				currentLikeBox.find(".like-count").html(likeCount);

				//updates data-like attribute
				currentLikeBox.attr("data-like", '')
				console.log(response);
			},
			error: (response)=>{
				console.log(response);
			}
		});

	}

}

export default Like;