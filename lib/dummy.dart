import 'package:flutter/material.dart';




class SweetHome extends StatefulWidget {
  @override
  _SweetHomeState createState() => _SweetHomeState();
}

class _SweetHomeState extends State<SweetHome> {
  int step = 0;
  List<Map<String, dynamic>> cart = [];
  String name = '', address = '', payment = 'JazzCash';

  final sweets = [
    {
      'name': 'Chocolate Cake',
      'price': 500,
      'image': 'https://i.imgur.com/Xwj3O8p.jpg'
    },
    {
      'name': 'Cupcake Box',
      'price': 300,
      'image': 'https://i.imgur.com/5OeJgG5.jpg'
    },
    {
      'name': 'Gulab Jamun',
      'price': 200,
      'image': 'https://i.imgur.com/dyAJ7Hd.jpg'
    },
    {
      'name': 'Jalebi',
      'price': 150,
      'image': 'https://i.imgur.com/Lb7z6aT.jpg'
    },
    {
      'name': 'Kheer Bowl',
      'price': 180,
      'image': 'https://i.imgur.com/n4FwwTI.jpg'
    },
  ];

  int get total => cart.fold(
    0,
        (sum, item) =>
    sum + (item['price'] as int) * (item['qty'] as int),
  );

  void addToCart(Map<String, dynamic> item) {
    int index = cart.indexWhere((i) => i['name'] == item['name']);
    setState(() {
      if (index != -1) {
        cart[index]['qty']++;
      } else {
        cart.add({...item, 'qty': 1});
      }
    });
  }

  void removeFromCart(Map<String, dynamic> item) {
    int index = cart.indexWhere((i) => i['name'] == item['name']);
    setState(() {
      if (cart[index]['qty'] > 1) {
        cart[index]['qty']--;
      } else {
        cart.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (step == 0) {
      content = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://i.imgur.com/5OeJgG5.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '🍩 Meethi Munch',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            'Sweeten Your Cravings',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          SizedBox(height: 30),
          ElevatedButton.icon(
            icon: Icon(Icons.cake),
            label: Text('Order Now'),
            onPressed: () => setState(() => step = 1),
          )
        ],
      );
    } else if (step == 1) {
      content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menu 🍰',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: sweets.length,
              itemBuilder: (_, i) {
                final item = sweets[i];
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      item['image'] as String,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(item['name'] as String),
                    subtitle: Text('Rs. ${item['price']}'),
                    trailing: IconButton(
                      icon: Icon(Icons.add, color: Colors.pink),
                      onPressed: () => addToCart(item),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => step = 2),
            child: Text('View Cart'),
          ),
        ],
      );
    } else if (step == 2) {
      content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '🛒 Your Cart',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: cart
                  .map((item) => ListTile(
                title: Text('${item['name']} x${item['qty']}'),
                subtitle: Text(
                    'Rs. ${(item['price']) * (item['qty'])}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () => removeFromCart(item)),
                    IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () => addToCart(item)),
                  ],
                ),
              ))
                  .toList(),
            ),
          ),
          Text(
            'Total: Rs. $total',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () => setState(() => step = 3),
              child: Text('Checkout')),
        ],
      );
    } else {
      content = SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Your Name'),
              onChanged: (val) => name = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Home Address'),
              onChanged: (val) => address = val,
            ),
            SizedBox(height: 10),
            Text(
              'Select Payment Method:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: Text('JazzCash'),
              value: 'JazzCash',
              groupValue: payment,
              onChanged: (v) => setState(() => payment = v.toString()),
            ),
            RadioListTile(
              title: Text('EasyPaisa'),
              value: 'EasyPaisa',
              groupValue: payment,
              onChanged: (v) => setState(() => payment = v.toString()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Order Placed! 🎉'),
                    content: Text(
                        'Thanks $name!\nTotal: Rs. $total\nPayment: $payment'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            step = 0;
                            cart.clear();
                          });
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      )
                    ],
                  ),
                );
              },
              child: Text('Place Order'),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Meethi Munch'),
        backgroundColor: Colors.pink,
        leading: step > 0
            ? IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => setState(() => step--),
        )
            : null,
      ),
      body: Padding(padding: EdgeInsets.all(16), child: content),
    );
  }
}
