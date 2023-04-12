import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/appDraw.dart';
import '../widget/gridview.dart';
import '../provider/products.dart';

class ProductViewScreen extends StatefulWidget {
  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  var _isInit = true;
  var _isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Products>(context).loadProducts().then((_) {
        _isLoading = false;
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electronics"),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.favorite_outline_rounded)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      drawer: appDrawer(),
      body: GridViewProduct(),
    );
  }
}
