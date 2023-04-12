import 'package:flutter/widgets.dart';

import './product.dart';

class Products with ChangeNotifier {
  late List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  Future<void> loadProducts() async {
    _items = [
      Product(
          id: "1",
          title: "Laptop/PC",
          description: "description",
          price: 123,
          imageUrl: "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06576806.png"),
      Product(
          id: "2",
          title: "Television",
          description: "description",
          price: 123,
          imageUrl: "https://w7.pngwing.com/pngs/954/324/png-transparent-samsung-mu7000-4k-resolution-ultra-high-definition-television-smart-tv-tivi-television-display-advertising-banner.png"),
      Product(
          id: "3",
          title: "Dryer",
          description: "description",
          price: 123,
          imageUrl: "https://www.pngfind.com/pngs/m/152-1522838_hair-dryer-png-free-download-hair-dryer-machine.png"),
      Product(
          id: "4",
          title: "Headphone",
          description: "description",
          price: 123,
          imageUrl: "https://e7.pngegg.com/pngimages/424/407/png-clipart-headphones-headphones.png"),
      Product(
          id: "5",
          title: "Tablet",
          description: "description",
          price: 123,
          imageUrl: "https://p.kindpng.com/picc/s/492-4925677_samsung-tablets-samsung-galaxy-u0026-tab-samsung-tablet.png"),
      Product(
          id: "6",
          title: "Mobile",
          description: "description",
          price: 123,
          imageUrl: "https://e7.pngegg.com/pngimages/879/858/png-clipart-smartphone-iphone-mobile-marketing-telecommunication-computer-smartphone-gadget-electronics.png"),
      Product(
          id: "7",
          title: "Printer",
          description: "description",
          price: 123,
          imageUrl: "https://static.wixstatic.com/media/2cd43b_a86c2c324da745aebab636131fb154ca~mv2.png/v1/fill/w_320,h_283,q_90/2cd43b_a86c2c324da745aebab636131fb154ca~mv2.png"),
      Product(
          id: "8",
          title: "Powerbank",
          description: "description",
          price: 123,
          imageUrl: "https://w7.pngwing.com/pngs/439/938/png-transparent-mobile-phones-battery-charger-rechargeable-battery-baterie-extern%C4%83-electric-battery-power-bank-electronics-gadget-mobile-phone.png"),
      Product(
          id: "9",
          title: "Smartwatch",
          description: "description",
          price: 123,
          imageUrl: "https://w7.pngwing.com/pngs/907/253/png-transparent-apple-watch-smartwatch-realistic-smart-watch-watch-accessory-accessories-realistic-thumbnail.png"),
      Product(
          id: "10",
          title: "Washing machine",
          description: "description",
          price: 123,
          imageUrl: "https://banner2.cleanpng.com/20180201/coq/kisspng-washing-machine-midea-wuxi-little-swan-home-applia-little-swan-washing-machine-5a73a4870c7055.538077311517528199051.jpg"),
    ];
    //notifyListeners();
  }
}
