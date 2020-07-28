import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = '/route-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(productId),
      ),
    );
  }
}
