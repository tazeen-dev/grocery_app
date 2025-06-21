import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/product-details.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/model/product_model/grid_product_list.dart';

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
    return SizedBox(
      height: 500,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 15,
            childAspectRatio: 0.7,
          ),
          scrollDirection: Axis.vertical,
          itemCount: widget.products.length,
          itemBuilder: (context, index) {
            return Container(
              // height: 260,
              // width: 150,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey.shade500,
                          size: 20,
                        )),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: widget.products[index].color,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(
                           text: widget.products[index].text, image: widget.products[index].image,
                              appicons: AppIcons.hearticon, discription: 'discription', price: '80', containerColor: AppColors.greyColor)));
                          //ProductDetails(text: , image: image, appicons: appicons, discription: discription, price: price, containerColor: containerColor)
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22.0, left: 14.0),
                          child: Image(
                            image: AssetImage(widget.products[index].image),
                            height: 40,
                          ),
                        )),
                  ],
                ),
                BlackTextWidget(
                  text: widget.products[index].price,
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  textColor: AppColors.LightGreen,
                ),
                BlackTextWidget(
                  text: widget.products[index].text,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                BlackTextWidget(
                  text: widget.products[index].subtitle,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.greyColor,
                ),
                Divider(thickness: 1, color: AppColors.greyColor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage(AppIcons.carticon)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()));
                        },
                        child: BlackTextWidget(
                          text: widget.products[index].cartprice,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        )),
                  ],
                ),
              ]),
            );
          }),
    );
  }
}
