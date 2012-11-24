class Main


    callback_categories = (data) ->
        source   = $("#categories_list").html()
        template = Handlebars.compile(source)
        html = template({categories: data});
        console.log(html)
        $('#categories').html(html);
        $("#categories a").click(-> 
            id_info = $(this).attr("id")
            link = '/show_category/'+id_info+'.json'
            console.log(link)
            callback_category_list = (data) ->
                console.log(data)
                source   = $("#categories_info").html()
                template = Handlebars.compile(source)
                console.log(source)
                html = template({categories_list: data});
                console.log(html)
            $.get(link, {} , callback_category_list, 'json')
        )

    $.get('/show_categories.json', {} ,callback_categories, 'json')

    callback_products = (data) ->
        source   = $("#products_list").html()
        template = Handlebars.compile(source)
        html = template({products: data});
        console.log(html)
        $('#products').html(html);

    $.get('/show_products.json', {} ,callback_products, 'json')



$(-> new Main())


