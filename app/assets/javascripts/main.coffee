class Main

    callback_category_info: (categories_info_data) ->
            source   = $("#categories_info").html()
            template = Handlebars.compile(source)
            html = template({categories_list: categories_info_data});
            $('#product_info').html(html);

    callback_categories: (categories_data) ->
        source   = $("#categories_list").html()
        template = Handlebars.compile(source)
        html = template({categories: categories_data});
        $('#categories').html(html);
        $("#categories a").click(-> 
            id_info = $(this).attr("id")
            link = '/show_category/'+id_info+'.json'
            $.get(link, {} , Main.prototype.callback_category_info , 'json')
        )

    $.get('/show_categories.json', {} , Main.prototype.callback_categories, 'json')

    callback_products: (data) ->
        source   = $("#products_list").html()
        template = Handlebars.compile(source)
        html = template({products: data});
        $('#products').html(html);

    $.get('/show_products.json', {} , Main.prototype.callback_products, 'json')



$(-> new Main())


