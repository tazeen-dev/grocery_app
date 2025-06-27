import 'package:flutter/material.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../model/product_model/grid_product_list.dart';

class SearchScreen extends StatefulWidget {
  final List<GridContainer> allProducts;

  const SearchScreen({super.key, required this.allProducts});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<GridContainer> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = widget.allProducts;

    // Add listener to filter as user types
    searchController.addListener(() {
      final query = searchController.text.toLowerCase();
      setState(() {
        filteredProducts = widget.allProducts.where((product) {
          return product.text.toLowerCase().contains(query);
        }).toList();
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: "Search products...",
            filled: true,
            fillColor: AppColors.lightGrey,
            prefixIcon: Icon(Icons.search, color: AppColors.greyColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          style: TextStyle(color: AppColors.blackColor, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: filteredProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // two columns
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            itemBuilder: (context, index) {
              final product = filteredProducts[index]; // ✅ This is your model
              return Container(
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(product.image, height: 80),
                    const SizedBox(height: 8),
                    Text(product.text, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(product.subtitle),
                    Text(product.price, style: const TextStyle(color: Colors.green)),
                    const SizedBox(height: 4),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(product.cartprice),
                    ),
                    if (product.isNew == true)
                      const Text('NEW', style: TextStyle(color: Colors.green)),
                    if (product.isDisount == true)
                      Text(product.discountValue ?? '', style: const TextStyle(color: Colors.red)),
                  ],
                ),
              );
            };
// gridProduct already holds GridContainer widgets
          },
        ),
      ),
    );
  }
}
