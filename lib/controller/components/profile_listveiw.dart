import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/model/product_model/profile_list_model.dart';
class ListClass extends StatelessWidget {
  final List<ProfileList> profileitems;
  const ListClass({super.key, required this.profileitems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profileitems.length,
        itemBuilder:(context,index){
          return ListTile(
            leading:Image(image: AssetImage(profileitems[index].image)),
            title:BlackTextWidget(text: profileitems[index].text),
            trailing: Icon(profileitems[index].icon),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
              profileitems[index].screen));
            },
          );
        });
  }
}
