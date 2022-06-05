

import 'package:get/get.dart';

import '../models/product.dart';

class ShoppingController extends GetxController {
  RxList<Product> product= <Product>[].obs;

  @override
 void onInit(){
    super.onInit();
    fetchProducts();

 }

 void fetchProducts()async{
    await Future.delayed(Duration(seconds: 1));
    var productResult= [
      Product(
          id: 1,
          price: 30,
          productDescription: "some descripiton about product",
          productImage: 'abd',
          productName: 'FirstProd'



      ),
      Product(
          id: 2,
          price: 40,
          productDescription: "second product",
          productImage: 'abd',
          productName: 'SecProd'
      ),
      Product(
          id: 3,
          price: 50,
          productDescription: "third product",
          productImage: 'abd',
          productName: 'ThirdProd'
      ),

    ];
    product.value=productResult;
 }
}