import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/product-details.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import '../../model/product_model/grid_product_list.dart';
import '../../view/home_view/cart-screen/cart.dart';
import '../utils/constants/appcolors/app_color.dart';
import '../utils/constants/appicons/app_icons.dart';

class GridList extends StatefulWidget {
  final List<GridContainer> products;

  const GridList({super.key, required this.products});

  @override
  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.products.length,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (context, index) {
            final product = widget.products[index];

            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (product.isNew == true)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Color(0xffFFF6E3),
                           // borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text('New',
                              style:
                                  TextStyle(fontSize: 12, color: Color(0xffE8AD41))),
                        )
                      else if (product.isDisount == true &&
                          product.discountValue != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color:Color(0xffFFE9E5),
                           // borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(product.discountValue!,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xffF56262))),
                        )
                      else
                        const SizedBox(height: 18),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            product.isFavourite = !product.isFavourite;
                          });
                        },
                        child: Icon(
                          product.isFavourite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: product.isFavourite
                              ? Colors.red
                              : AppColors.greyColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: product.color,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetails(
                                  text: product.text,
                                  image: product.image,
                                  appicons: AppIcons.hearticon,
                                  discription:
                                      'Organic Mountain works as a seller for many organic growers of organic lemons Organic '
                                          'lemons are easy to spot in your produce aisle. They are just like regular '
                                          'lemons,ut they will usually have a few more scars on the outside of the '
                                          'lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing',
                                  price: product.price,
                                  containerColor: product.color,
                                ),
                              ),
                            );
                          },
                          child: Image.asset(product.image, height: 40),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// Price and info
                  BlackTextWidget(
                    textalignn: TextAlign.center,
                    text: product.price,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    textColor: AppColors.LightGreen,
                  ),
                  BlackTextWidget(
                    text: product.text,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  BlackTextWidget(
                    text: product.subtitle,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.greyColor,
                  ),

                  const SizedBox(height: 8),
                  const Divider(thickness: 1, color: Colors.grey, height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(AppIcons.carticon, height: 18),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartScreen()),
                          );
                        },
                        child: BlackTextWidget(
                          text: product.cartprice,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
