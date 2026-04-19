import 'package:flutter/material.dart';
import 'package:lazoo/features/Home/presentation/widgets/product_card.dart';

class ProductModel {
  final String title;
  final String price;
  final String image;

  const ProductModel({
    required this.title,
    required this.price,
    required this.image,
  });
}

class ProductGrid extends StatelessWidget {
  final String searchQuery;

  const ProductGrid({
    super.key,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    /// 🔥 البيانات بدل const list
    final List<ProductModel> products = [
      const ProductModel(
        title: "Nike Sportswear Club Fleece",
        price: "\$99",
        image: "assets/images/newtshirt.png",
      ),
      const ProductModel(
        title: "adidas Jacket Nike Wtrefner",
        price: "\$80",
        image: "assets/images/tshirt.png",
      ),
      const ProductModel(
        title: "qrenol Jacket Nike runner",
        price: "\$79",
        image: "assets/images/image1.png",
      ),
      const ProductModel(
        title: "Trail Running Jacket Nike Windrunner",
        price: "\$59",
        image: "assets/images/image2.png",
      ),
    ];

    /// 🔥 فلترة حسب search
    final filteredProducts = products.where((product) {
      return product.title
          .toLowerCase()
          .contains(searchQuery.toLowerCase());
    }).toList();

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 0.7,

      /// 🔥 بدل children const
      children: filteredProducts.map((product) {
        return ProductCard(
          title: product.title,
          price: product.price,
          image: product.image,
        );
      }).toList(),
    );
  }
}