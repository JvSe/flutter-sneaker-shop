import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Tennis 01',
      price: '240',
      imagePath: 'assets/imgs/sneaker1.png',
      description: 'Tennis Bom',
    ),
    Shoe(
      name: 'Tennis 02',
      price: '140',
      imagePath: 'assets/imgs/sneaker2.png',
      description: 'Tennis Bom',
    ),
    Shoe(
      name: 'Tennis 03',
      price: '340',
      imagePath: 'assets/imgs/sneaker3.png',
      description: 'Tennis Bom',
    ),
    Shoe(
      name: 'Tennis 04',
      price: '280',
      imagePath: 'assets/imgs/sneaker4.png',
      description: 'Tennis Bom',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
