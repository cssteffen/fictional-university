import $ from 'jquery';

class Search {

	// 1. Constructor: descibe and create/initiate our object
	constructor() { // be sure to include constructor function when you create a class
		//[ex. properties; this.name="Jane"; this.eyeColor = "green"]

		this.openButton = $(".js-search-trigger");
		this.closeButton = $(".search-overlay__close");
		this.searchOverlay = $(".search-overlay");
		this.events(); // makes sure eventslistener gets added to page immediately
		this.isOverlayOpen = false;
	} 

	// 2. Events //connect the dot
	//[ex. if this.head feels cold, respond with wearsHat()]
	events() {
		this.openButton.on("click", this.openOverlay.bind(this));
		this.closeButton.on("click", this.closeOverlay.bind(this));
		$(document).on("keydown", this.keyPressDispatcher.bind(this)); 
	}



	// 3. Methods (function, action...[run, jump, walk, speak])
	keyPressDispatcher(e) {
		if (e.keyCode == 83 && !this.isOverlayOpen) { // 's key'
			this.openOverlay();
			this.isOverlayOpen = true;
		}

		if (e.keyCode == 27 && this.isOverlayOpen) { // 'esc key'
			this.closeOverlay();
			this.isOverlayOpen = false;
		}
	}

	openOverlay() {
		this.searchOverlay.addClass("search-overlay--active");
		$("body").addClass("body-no-scroll"); //uses overflow: hidden
		console.log("our open method just ran.");

	}

	closeOverlay() {
		this.searchOverlay.removeClass("search-overlay--active");
		$("body").removeClass("body-no-scroll"); 
		console.log("our close method just ran.");

	}

}

export default Search;