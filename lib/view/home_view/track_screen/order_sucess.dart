import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class OrderSucess extends StatefulWidget {
  const OrderSucess({super.key});

  @override
  State<OrderSucess> createState() => _OrderSucessState();
}

class _OrderSucessState extends State<OrderSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/icons/Vector (14).png'),
        ],
      ),
    );
  }
}
