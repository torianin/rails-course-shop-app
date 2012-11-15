Handlebars.registerHelper('categories', function(items, options) {
    out = "";
    out = "<h2>Produkty<br></h2>"
    for(var i=0, l=items.length - 1; i<l; i++) {
        out = out + "<a href='#/category/" + items[i].id + "'>" + items[i].name + "</a></br>";
    }

    return out;
});