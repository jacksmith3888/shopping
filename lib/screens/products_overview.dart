import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  All,
  Favorites,
}

class ProductsOverview extends StatefulWidget {
  @override
  _ProductsOverviewState createState() => _ProductsOverviewState();
}

class _ProductsOverviewState extends State<ProductsOverview> {
  bool _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lawson'),
          actions: <Widget>[
            PopupMenuButton(
              onSelected: (FilterOptions selected) {
                setState(() {
                  if (selected == FilterOptions.Favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
              itemBuilder: (_) => [
                PopupMenuItem(
                    child: Text('Favorites'), value: FilterOptions.Favorites),
                PopupMenuItem(child: Text('All'), value: FilterOptions.All)
              ],
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
        body: ProductsGrid(_showOnlyFavorites));
  }
}
