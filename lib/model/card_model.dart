import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  // list of items on sales
  final List _shopItems = [
    // [ itemName, itemPrice, imgPart, color]
    ['Banana', '4.00','assets/images/banana.png',Colors.blue],
    ['Apple','2.00','assets/images/aple.png',Colors.grey],
    ['Mango','3.00','assets/images/mango.png',Colors.yellow],
    ['Melon','6.00','assets/images/melon.png',Colors.green]
  ];
  get shopItems => _shopItems;

  // list of cart items

  final List _cartItems = [];

  get  cartItems => _cartItems;

  // add to cart

  void addItemToCart (int,index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  // remove from cart
  void removeItemFromCart (int,index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
  // calculate total items

  String calculateTotal(){
    double totalPrice = 0;
    for(int i = 0; i < _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}


//(_cartItems[i][1])