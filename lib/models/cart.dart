import 'package:flutter/material.dart';
import 'package:shoe_store_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // Shoe store list
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '250',
        imgPath: 'lib/images/ZoomFreak.jpg',
        description: 'lorem ipsum dolor sit amet, consectetur'),
    Shoe(
        name: 'Air Jordan',
        price: '260',
        imgPath: 'lib/images/AirJordan.jpeg',
        description: 'lorem ipsum dolor sit amet, consectetur'),
    Shoe(
        name: 'Zoom FREAK',
        price: '270',
        imgPath: 'lib/images/KDTREY.jpg',
        description: 'lorem ipsum dolor sit amet, consectetur'),
    Shoe(
        name: 'Kyrie',
        price: '270',
        imgPath: 'lib/images/Kyrie.jpg',
        description: 'lorem ipsum dolor sit amet, consectetur'),
  ];

  // User cart items
  List<Shoe> userCart = [];

  // Get shoe list for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Get user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
