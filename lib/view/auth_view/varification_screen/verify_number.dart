import 'package:flutter/material.dart';
class VeryfyNumber extends StatefulWidget {
  @override
  _VeryfyNumberState createState() => _VeryfyNumberState();
}
class _VeryfyNumberState extends State<VeryfyNumber> {
  TextEditingController phoneController = TextEditingController();
  List <Map<String,String>> countries=[
  {'name': 'Pakistan', 'flag': '🇵🇰', 'code': '+92'},
  {'name': 'India', 'flag': '🇮🇳', 'code': '+91'},
  {'name': 'USA', 'flag': '🇺🇸', 'code': '+1'},
  {'name': 'UK', 'flag': '🇬🇧', 'code': '+44'},
];
 late Map<String,String> selectedCountry;
  void initSate(){
    super.initState();
    selectedCountry==countries[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 108,),
          Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButtonHideUnderline(
            child: DropdownButton<Map<String, String>>(
            value: selectedCountry,
            items: countries.map((country) {
              return DropdownMenuItem<Map<String, String>>(
                value: country,
                child: Row(
                  children: [
                    Text(country['flag']!),
                    SizedBox(width: 5),
                    Text(country['code']!),
                  ],
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCountry = value!;
              });
            },
            ),
            ),),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter phone number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],),
        ],
      ),
    );
  }
}

