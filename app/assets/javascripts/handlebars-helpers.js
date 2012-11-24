Handlebars.registerHelper('categories', function(items, options) {
    out = "";
    out = "<button id=\"categories_button\">Kategorie</button><br>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a id="+(i+1)+" href='#/category/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }

    return out;
});

Handlebars.registerHelper('products', function(items, options) {
    out = "";
    out = "<br><button id=\"products\">Produkty</button><br>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a id="+i+" href='#/products/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }

    return out;
});

Handlebars.registerHelper('categories_list', function(items, options) {
    out = "";
    console.log(items)
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<p>" + items[i].kategoria + "</p></br>";
    }

    return out;
});