import 'package:flutter/material.dart';
import 'package:smart_agri_connect/order_details.dart';

class MyBasket extends StatefulWidget {
  const MyBasket({super.key});

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  final _cntrl = TextEditingController();
  final List<Map<String, String>> orders = [
    {
      'image': 'assets/tomato.jpeg',
      'status': 'Delivered on Jul 09',
      'title': 'Tomatoes - 20 Kg',
    },
    {
      'image': 'assets/wheat_mybaskets.jpg',
      'status': 'Delivered on Jul 05',
      'title': 'Wheat - 100 Quintals',
    },
    {
      'image': 'assets/paddy_mybasket.png',
      'status': 'Refund completed',
      'title': 'Paddy - 100 Tons',
    },
    {
      'image': 'assets/carrot_mybasket.png',
      'status': 'Delivered on Jun 12',
      'title': 'Carrot - 100 Kg',
    },
    {
      'image': 'assets/green_chilli_mybasket.png',
      'status': 'Delivered on Jun 12',
      'title': 'Green Chilli - 20 Kg',
    },
    {
      'image': 'assets/ladys_finger_mybasket.png',
      'status': 'Delivered on Jun 12',
      'title': 'Ladys Finger - 100 Kg',
    },
    {
      'image': 'assets/mango_basket.png',
      'status': 'Delivered on Jun 12',
      'title': 'Mango - 100 Kg',
    },
    {
      'image': 'assets/apples_basket.png',
      'status': 'Delivered on Jun 12',
      'title': 'Apples - 50 Kg',
    },
    {
      'image': 'assets/orange_basket.png',
      'status': 'Delivered on Jun 12',
      'title': 'Orange - 20 Kg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Basket",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),

        actions: [
          Icon(Icons.search, size: 28),
          SizedBox(width: 16),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 16),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder:
                          //           (context) => OrderDetailsPage(),
                          //     ),
                          //   );
                          // },
                          controller: _cntrl,
                          decoration: InputDecoration(
                            hintText: "Search your order here",
                            prefixIcon: Icon(Icons.search_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(Icons.filter_list, size: 30),
                      const SizedBox(width: 12),
                      const Text(
                        "Filters",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order =
                          orders[index]; // Define order inside builder

                      return Container(
                        
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 133, 234, 137),
                          border: Border.all(width: 0.5, color: Colors.green),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => OrderDetailsPage(order: order),
                              ),
                            );
                          },
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              order['image']!,
                              width: 80,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            order['title']!,
                            style: TextStyle(fontSize: 20),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                order['status']!,
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: List.generate(
                                  5,
                                  (starIndex) =>
                                      Icon(Icons.star_border, size: 20),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Rate this product now",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          isThreeLine: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}