class Main
    
    createCategory: ->
    callback = (data) ->
        source   = $("#categories_list").html()
        template = Handlebars.compile(source)
        html = template({categories: data});
        console.log(html)
        $('#categories').html(html);

    $.get('/show.json', {} ,callback, 'json')

    app = Sammy ->
        @get '#/', ->

        @get '#/category/:id', ->

        @get '#/product/:id', ->

    app.run '#/'

$(-> new Main())