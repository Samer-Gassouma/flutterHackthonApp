import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Container(
          child: CachedNetworkImage(
            imageUrl:
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
            width: 50,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),

          // NetworkImage(
          //     'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
        ),
        title: const Text('Product Name'),
        subtitle: const Text('Product Description'),
        trailing: Icon(Icons.favorite_border),
      ),
    );
  }
}
