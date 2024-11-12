import 'package:flutter/material.dart';
import 'package:foodly_ui/components/cards/iteam_card.dart';
import 'package:foodly_ui/constants.dart';
import '../../orderDetails/order_details_screen.dart'; // import OrderDetailsScreen

class Items extends StatefulWidget {
  const Items({Key? key});

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  double totalPrice = 0; // เพิ่มตัวแปรเก็บราคารวม
  List<Map<String, dynamic>> selectedItems =
      []; // เพิ่มตัวแปรเก็บรายการสินค้าที่เลือก

  void addToCart(Map<String, dynamic> item) {
    setState(() {
      totalPrice += item["price"];
      selectedItems.add(item);
      // totalPrice = item['price'];
      // selectedItems = [item];
    });
    // Navigate to OrderDetailsScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderDetailsScreen(
            totalPrice: totalPrice, selectedItems: selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: demoTabs.length,
          child: TabBar(
            isScrollable: true,
            unselectedLabelColor: titleColor,
            labelStyle: Theme.of(context).textTheme.titleLarge,
            onTap: (value) {
              // you will get selected tab index
            },
            tabs: demoTabs,
          ),
        ),
        ...List.generate(
          demoData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: ItemCard(
              title: demoData[index]["title"],
              description: demoData[index]["description"],
              image: demoData[index]["image"],
              foodType: demoData[index]['foodType'],
              price: demoData[index]["price"],
              priceRange: demoData[index]["priceRange"],
              press: () {
                // เพิ่มรายการสินค้าที่เลือกลงในรายการ selectedItems และส่งไปยังหน้า OrderDetailsScreen
                addToCart(demoData[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

final List<Tab> demoTabs = <Tab>[
  const Tab(
    child: Text('All Menu'),
  )
];

final List<Map<String, dynamic>> demoData = [
  
];
