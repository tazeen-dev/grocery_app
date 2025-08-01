import 'package:flutter/material.dart';
import 'package:grocery_app/view/home_view/payement_screen.dart';
import 'package:grocery_app/view/home_view/profile-screen/signout_screen.dart';
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
import 'address_screen.dart';
import 'creditcard_screen.dart';
import 'my_address_screen.dart';
import 'notifictionscreen.dart';
import 'orderscreen.dart';
class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
  List<ProfileList> items=[
    ProfileList(AboutScreen(), text: 'About me', image: AppIcons.persongreen, icon:Icons.arrow_forward_ios,),
    ProfileList(OrderScreen(), text: 'My orders', image: AppIcons.order, icon: Icons.arrow_forward_ios),
    ProfileList(FavouriteScreen(), text:'My Favourites', image: AppIcons.greenheart, icon:Icons.arrow_forward_ios),
    ProfileList(MyAddressScreen(), text: 'My address', image: AppIcons.address, icon: Icons.arrow_forward_ios),
    ProfileList(PayementScreen(), text: 'Make Payments', image: AppIcons.creditcard, icon: Icons.arrow_forward_ios),
    ProfileList(TransactionsScreen(), text:'Transactions' , image:AppIcons.transaction, icon: Icons.arrow_forward_ios),
    ProfileList(NotifictionScreen(), text: 'Notifications', image:AppIcons.notification1, icon:Icons.arrow_forward_ios),
    ProfileList(ReveiwScreen(), text:'Revieiw', image: AppIcons.signout, icon:Icons.arrow_forward_ios),
    ProfileList(ApplyFilters(), text:'ApplyFilter', image: AppIcons.check, icon:Icons.arrow_forward_ios),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Expanded(
                  flex: 20,
                    child: Container(
                  height: 145,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                  ),
                )),
                      Expanded(
                        flex: 80,
                        child:Column(
                          children: [
                            Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                ),
                                child: Column(
                                    children: [
                                      SizedBox(height: 80,),
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage(AppIcons.profile),)
                                        ),
                                      ),
                                      BlackTextWidget(text: 'Olivia Austin',fontWeight: FontWeight.w600,fontSize: 18,),
                                      GreyText(text: 'oliviaaustin@gmail.com',),
                                    ],
                                ),
                            ),
                            ListClass(profileitems: items),
                          ],
                        ),

                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

