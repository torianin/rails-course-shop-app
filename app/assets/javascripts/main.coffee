class Main                                                                                                  
	constructor: ->       
		source   = $("#index").html()
		template = Handlebars.compile(source)                                                                  
		name = "Robert Ignasiak"
		context = {name: name}  
		html = template(context)
		$('.index').append(html)
		# $.ajax({
		#   url: "index.json",
		#   cache: false ,
		#   dataType: "json"
		# }).done(function( html ) {
		#   $("#results").append(html);
		# });

$(-> new Main())