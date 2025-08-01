import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';

import '../../model/product_model/profile_list_model.dart';
import '../utils/constants/appcolors/app_color.dart';
class ListClass extends StatefulWidget {
  final List<ProfileList> profileitems;
  const ListClass({super.key, required this.profileitems});

  @override
  State<ListClass> createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 700,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.profileitems.length,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading:Image(image: AssetImage(widget.profileitems[index].image)),
                title:BlackTextWidget(text: widget.profileitems[index].text,fontSize:
                12,fontWeight: FontWeight.w500,),

                trailing: Padding(
                  padding: const EdgeInsets.only(left: 88.0),
                  child: Icon(widget.profileitems[index].icon,color: AppColors.greyColor,size: 20,),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  widget.profileitems[index].screen));
                },
              ),
            );
          }),
    );
  }
}
