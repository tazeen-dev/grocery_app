import 'package:flutter/ma''terial.dart';
import 'package:grocery_app/controller/components/text-class.dart';
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlackTextWidget(text: 'My Order',fontWeight: FontWeight.w600,fontSize: 18,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
