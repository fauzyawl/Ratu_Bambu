import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart =[
    {
      "name": "paket 1",
      "Picture": "images/products/21.jpg",
      "price": 85,
      "quatity": 1,
    },
    {
      "name": "paket 1",
      "Picture": "images/products/21.jpg",
      "price": 85,
      "quatity": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context,index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_picture: Products_on_the_cart[index]["Picture"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
        );
      },);
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty

});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 100.0,
        height: 80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[

                Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("quantity:"),),

              ],
            ),
            new Container(
              height: 45.0,
              alignment: Alignment.topLeft,
              child: new Text(
                  "\Rp${cart_prod_price}",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),),

            )
          ],
        ),
        /*
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("1"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
         */
      ),
    );
  }
}

