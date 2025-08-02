import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget {
  final Map<String, String> order;

  const OrderDetailsPage({super.key, required this.order});

  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID: OD331466771763544100", style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.order['title'] ?? '',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("L, Multicolor"),
                            Text("Seller: FORCAS APPARELS", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 4),
                            Text("₹469", style: TextStyle(fontSize: 18, color: Colors.green)),
                            Text("3 offers", style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ),
                      Image.network(widget.order['image'] ?? '',
                          width: 50, height: 80, fit: BoxFit.cover),
                    ],
                  ),
                  const Divider(height: 32),
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Text("Order Confirmed, Jun 08, 2024")
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Text("Delivered, Jun 16, 2024")
                    ],
                  ),
                  const Divider(height: 32),
                  Text("Delivery Address", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("5-59/A Near Patan Masjid,\nVadla Peta, Kurnool"),
                  Text("Bijjam. Thirupathi Reddy\n8309952887"),
                  const Divider(height: 32),
                  Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  _priceRow("List Price", "₹1,859", strike: true),
                  _priceRow("Selling Price", "₹743"),
                  _priceRow("Extra Discount", "- ₹244", color: Colors.green),
                  _priceRow("Special Price", "₹499"),
                  _priceRow("Payment Handling Fee", "₹5"),
                  _priceRow("Coupon Discount", "- ₹35", color: Colors.green),
                  const Divider(),
                  _priceRow("Total Amount", "₹469", isBold: true),
                  const Divider(height: 32),
                  Text("Payment Method: Cash On Delivery"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _priceRow(String label, String amount,
      {bool strike = false, bool isBold = false, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              )),
          Text(
            amount,
            style: TextStyle(
              color: color,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              decoration: strike ? TextDecoration.lineThrough : null,
            ),
          ),
        ],
      ),
    );
  }
}