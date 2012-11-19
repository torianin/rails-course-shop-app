class Main
    
    createAll: ->
    callback_categories = (data) ->
        source   = $("#categories_list").html()
        template = Handlebars.compile(source)
        html = template({categories: data});
        console.log(html)
        $('#categories').html(html);

    $.get('/show_categories.json', {} ,callback_categories, 'json')

    callback_products = (data) ->
        source   = $("#products_list").html()
        template = Handlebars.compile(source)
        html = template({products: data});
        console.log(html)
        $('#products').html(html);

    $.get('/show_products.json', {} ,callback_products, 'json')

    app = Sammy ->
        @get '#/', ->

        @get '#/category/:id', ->

        @get '#/product/:id', ->

    app.run '#/'

$(-> new Main())