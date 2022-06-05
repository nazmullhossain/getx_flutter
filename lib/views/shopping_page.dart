import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controllers/cart_conroller.dart';
import '../controllers/shopping_controller.dart';


class ShoppingPage extends StatelessWidget {
 ShoppingPage({Key? key}) : super(key: key);
  final ShoppingController shoppingController = Get.find();
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
        Expanded(
          child: GetX<ShoppingController>(

            builder: (controller) {
              return ListView.builder(
                itemCount: controller.product.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.product[index].productName
                                  ),
                                  Text(
                                    controller.product[index].productDescription,
                                    style: TextStyle(fontSize: 24),

                                  ),
                                  Text(
                                    '\$${controller.product[index].price}'
                                  )
                                ],
                              )
                            ],
                          ),
                          RaisedButton(onPressed: (){
                                     cartController.addToCart(
                                      controller.product[index]
                                  );
                          },
                          color: Colors.blue,
                            textColor: Colors.white70,
                            child: Text("Add to cart"),
                          ),

                        ],
                      ),
                    );
                  });
            }
          ),
        ),
          GetX<CartController>(

            builder: (controller) {
              return Text("Total Amount: \$${controller.totalPrice} ",style: TextStyle(fontSize: 32, color: Colors.white),);
            }
          ),
          SizedBox(height: 50,)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed:() {},
          icon: Icon(Icons.shopping_cart,
          color: Colors.black,),
          backgroundColor: Colors.amber,
          label: GetX<CartController>(

            builder: (controller) {
              return Text(controller.count.toString());
            }
          )),

    );
  }
}
