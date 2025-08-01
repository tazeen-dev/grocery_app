import 'package:flutter/material.dart';
import 'package:grocery_app/view/home_view/payement_screen.dart';
import 'package:grocery_app/view/home_view/profile-screen/transactions_screen.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/profile_listveiw.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import '../../../model/product_model/profile_list_model.dart';
import '../apply_filters/apply_filters.dart';
import '../favorities-screen/favourite.dart';
import '../reveiw/reveiw_screen.dart';
import 'aboutscreen.dart';
import 'my_address_screen.dart';
import 'notifictionscreen.dart';
import 'orderscreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<ProfileList> items = [
    ProfileList(AboutScreen(), text: 'About me', image: AppIcons.persongreen, icon: Icons.arrow_forward_ios),
    ProfileList(OrderScreen(), text: 'My orders', image: AppIcons.order, icon: Icons.arrow_forward_ios),
    ProfileList(FavouriteScreen(), text: 'My Favourites', image: AppIcons.greenheart, icon: Icons.arrow_forward_ios),
    ProfileList(MyAddressScreen(), text: 'My address', image: AppIcons.address, icon: Icons.arrow_forward_ios),
    ProfileList(PayementScreen(), text: 'Make Payments', image: AppIcons.creditcard, icon: Icons.arrow_forward_ios),
    ProfileList(TransactionsScreen(), text: 'Transactions', image: AppIcons.transaction, icon: Icons.arrow_forward_ios),
    ProfileList(NotifictionScreen(), text: 'Notifications', image: AppIcons.notification1, icon: Icons.arrow_forward_ios),
    ProfileList(ReveiwScreen(), text: 'Review', image: AppIcons.signout, icon: Icons.arrow_forward_ios),
    ProfileList(ApplyFilters(), text: 'Apply Filter', image: AppIcons.check, icon: Icons.arrow_forward_ios),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: AppColors.whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(AppIcons.profile),
                  ),
                  SizedBox(height: 10),
                  BlackTextWidget(
                    text: 'Olivia Austin',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  GreyText(text: 'oliviaaustin@gmail.com'),
                  SizedBox(height: 10),
                ],
              ),
            ),

            // 🔹 List View of Options
            ListClass(profileitems: items),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
