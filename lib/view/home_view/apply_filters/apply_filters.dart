import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/view/home_view/cart-screen/shipping_address.dart';
import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class ApplyFilters extends StatefulWidget {
  const ApplyFilters({super.key});

  @override
  State<ApplyFilters> createState() => _ApplyFiltersState();
}

class _ApplyFiltersState extends State<ApplyFilters> {
  TextEditingController minController = TextEditingController();
  TextEditingController maxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Apply Filters',
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image(
            image: AssetImage(AppIcons.backicon),
            color: AppColors.blackColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShippingAddress()));
              },
              child: Image.asset('assets/icons/refresh.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlackTextWidget(
                    text: 'Price Range',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFeildWidget(hintext: 'min', prefixIcons: Icons.remove_circle_outline, controller: minController, color: AppColors.lightGrey),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFeildWidget(hintext: 'max', prefixIcons: Icons.add_circle_outline, controller: maxController, color: AppColors.lightGrey),

                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Divider(color: AppColors.greyColor),
                  const SizedBox(height: 20),
                  BlackTextWidget(
                    text: 'Star Rating',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        ...List.generate(
                          4,
                              (_) => Icon(Icons.star, color: Color(0xffFFC107), size: 20),
                        ),
                        Icon(Icons.star, color: Colors.white, size: 15),
                        const SizedBox(width: 8),
                        Text(
                          '4 Stars',
                          style: TextStyle(color: AppColors.greyColor),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Divider(color: AppColors.greyColor),
                  const SizedBox(height: 20),
                  BlackTextWidget(
                    text: 'Options',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 20),
                  _filterRow(
                    icon: Icons.discount_outlined,
                    text: 'Discount',
                    selected: false,
                  ),
                  const SizedBox(height: 10),
                  _filterRow(
                    image: AppIcons.outofdeleverd,
                    text: 'Free shipping',
                    selected: true,
                  ),
                  const SizedBox(height: 10),
                  _filterRow(
                    image: AppIcons.order,
                    text: 'Same day delivery',
                    selected: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            GreenTextButton(
              text: 'Apply filter',
              ontap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }

  Widget _filterRow({
    IconData? icon,
    String? image,
    required String text,
    required bool selected,
  }) {
    return Row(
      children: [
        if (icon != null) Icon(icon, color: AppColors.greyColor),
        if (image != null) Image.asset(image, height: 20),
        const SizedBox(width: 10),
        Expanded(
          child: BlackTextWidget(
            text: text,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            textColor: AppColors.greyColor,
          ),
        ),
        Icon(
          selected ? Icons.check_circle : Icons.check_circle_outline_outlined,
          color: selected ? AppColors.DarkGreen : AppColors.greyColor,
        ),
      ],
    );
  }
}
