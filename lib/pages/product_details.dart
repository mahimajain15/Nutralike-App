import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;

  ProductDetails({this.product_detail_name, this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.yellow,
        title: Text('Nutralike'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 100.0,
            child: ListTile(
              title: new Text(
                widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              subtitle: new Row(
                children: <Widget>[
                  Expanded(
                      child: new Text(
                    '${widget.product_detail_price}',
                    style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline, fontSize: 20.0),
                  ))
                ],
              ),
            ),
          ),
//##################### THE FIRST BUTTON ###########################
          Divider(),
          Row(children: <Widget>[
            Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      //############# THE QUANTITY BUTTON ###########
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            showDialog(context: context,
                                builder: (context){
                                  return new AlertDialog(
                                    title: new Text('Quantity'),
                                    content: new Text('Choose the quantity'),
                                    actions: <Widget>[
                                      new MaterialButton(onPressed: (){
                                        Navigator.of(context).pop(context);
                                      },
                                        child: new Text('Close'),
                                      )
                                    ],
                                  );
                                });
                          },
                          color: Colors.white,
                          elevation: 0.2,
                          textColor: Colors.grey,
                          child: Row(
                            children: <Widget>[
                              Expanded(child: new Text('Qty')),
                              Expanded(child: new Icon(Icons.arrow_drop_down),)
                              ],
                            ),
                          )
                      ),
                      //############## FORM BUTTON ####################
                      Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              showDialog(context: context,
                                  builder: (context){
                                    return new AlertDialog(
                                      title: new Text('Form'),
                                      content: new Text('Choose the form'),
                                      actions: <Widget>[
                                        new MaterialButton(onPressed: (){
                                          Navigator.of(context).pop(context);
                                        },
                                          child: new Text('Close'),
                                        )
                                      ],
                                    );
                                  });
                            },
                            color: Colors.white,
                            elevation: 0.2,
                            textColor: Colors.grey,
                            child: Row(
                              children: <Widget>[
                                Expanded(child: new Text('Form')),
                                Expanded(child: new Icon(Icons.arrow_drop_down),)
                              ],
                            ),
                          )
                      ),
                      //################### PACKING ###################
                      Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              showDialog(context: context,
                                  builder: (context){
                                    return new AlertDialog(
                                      title: new Text('Packing'),
                                      content: new Text('Choose the packing type'),
                                      actions: <Widget>[
                                        new MaterialButton(onPressed: (){
                                          Navigator.of(context).pop(context);
                                        },
                                          child: new Text('Close'),
                                        )
                                      ],
                                    );
                                  });
                            },
                            color: Colors.white,
                            elevation: 0.2,
                            textColor: Colors.grey,
                            child: Row(
                              children: <Widget>[
                                Expanded(child: new Text('Pack')),
                                Expanded(child: new Icon(Icons.arrow_drop_down),)
                              ],
                            ),
                          )
                      )
                      ],
                    ),
                  )
            )
          ]
          ),
          Divider(),


          //##########Second button############
          Row(children: <Widget>[
            Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.yellow,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      //############# THE  BUTTON ###########
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.yellow,
                          elevation: 0.2,
                          textColor: Colors.grey,
                          child: new Text("Buy now")
                          ),
                      ),
                      new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.yellow , onPressed: (){}),
                      new IconButton(icon: Icon(Icons.favorite_border), color: Colors.yellow , onPressed: (){})
                      ],
                    ),
                  )
            )
          ]
          ),
          // //#### Extra Features of the product are below... kindly uncomment and edit based on requirements
          // Divider(),
          // new ListTile(
          //   title: new Text('Product Details'),
          //   subtitle: new Text('.....'),
          // ),
          // Divider(),
          // new Row(
          //   children: <Widget>[
          //     Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          //       child: new Text('Product Name', style: TextStyle(color: Colors.grey),),)
          //   ],
          // ),
          // new Row(
          //   children: <Widget>[
          //     Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          //       child: new Text('Product Condition', style: TextStyle(color: Colors.grey),),)
          //   ],
          // ),
          // new Row(
          //   children: <Widget>[
          //     Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          //       child: new Text('Product Weight', style: TextStyle(color: Colors.grey),),)
          //   ],
          // ),
        ],
      ),
    );
  }
}
