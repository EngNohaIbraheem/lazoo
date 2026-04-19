import 'package:flutter/cupertino.dart';
import 'package:lazoo/features/Home/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazoo/features/Home/presentation/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 0.7,
      children: const [
        ProductCard(
          title: "Nike Sportswear Club Fleece",
          price: "\$99",
          image: "assets/images/newtshirt.png",
        ),
        ProductCard(
          title: "adidas  Jacket Nike Wtrefner",
          price: "\$80",
          image: "assets/images/tshirt.png",
        ),
        ProductCard(
          title: "qrenol  Jacket Nike runner",
          price: "\$79",
          image: "assets/images/image1.png",
        ),
        ProductCard(
            title: "Trail Running Jacket Nike Windrunner",
            price: "\$59",
            image: "assets/images/image2.png"
        ),
      ],
    );
  }
}