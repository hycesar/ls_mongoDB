//prologo
db = connect("localhost:27017/gdi");
collections = db.getCollectionNames();
//q1
db.produtos.findOne();

