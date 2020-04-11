import 'package:flutter/material.dart';
import 'package:ratu_bambu/detail.dart';



class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "paket 1",
      "Picture": "images/products/21.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "paket 2",
      "Picture": "images/products/21.jpg",
      "old_price": 120,
      "price": 85,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['Picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
     );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailBarang(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_picture: prod_picture,
              );
            }));
          },
          child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
                  title: Text("\Rp $prod_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),),
                ),
              ),
              child: Image.asset(prod_picture,
              fit: BoxFit.cover,)
          ),
        ),
      );
  }
}

