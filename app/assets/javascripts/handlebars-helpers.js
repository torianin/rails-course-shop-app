Handlebars.registerHelper('categories', function(items, options) {
    out = "";
    out = "<h2>Kategorie</h2>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a id="+(i+1)+" href='#/category/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }

    return out;
});

Handlebars.registerHelper('products', function(items, options) {
    out = "";
    out = "<h2>Produkty</h2>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a id="+(i+1)+" href='#/products/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }
    out = out + "<h2> Szukaj </h2> Nazwa zawiera <input><br>Cena pomiędzy<br> <input> i <input><br> <button>Szukaj</button>"
    return out;
});

Handlebars.registerHelper('categories_list', function(items, options) {
    out = "";
    out = "<h2> Produky w kategorii </h2>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<p>" + items[i].products + "</p>";
    }
    return out;
});