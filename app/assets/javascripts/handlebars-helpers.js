Handlebars.registerHelper('categories', function(items, options) {
    out = "";
    out = "<button id=\"categories_button\">Kategorie</button><br>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a href='#/category/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }

    return out;
});

Handlebars.registerHelper('products', function(items, options) {
    out = "";
    out = "<br><button id=\"products\">Produkty</button><br>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a href='#/products/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }

    return out;
});