import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int quantity = 4;
  final _cntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          ),
        ),
        title: const Text(
          "Item Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_basket_sharp, color: Colors.black),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _cntrl,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search_outlined),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Image container
              Center(
                child: Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),

                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/image_1.png',
                      ), // your image asset here
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Tags: Organic & SNAP eligible
              Wrap(
                spacing: 10,
                children: [
                  _buildTag(
                    'Organic',
                    Colors.green.shade100,
                    Colors.green.shade800,
                  ),
                  _buildTag(
                    'SNAP eligible',
                    Colors.grey.shade200,
                    Colors.grey.shade800,
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Price and product name
              const Text(
                "\$2.99/lb.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Organic Eggplant",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),

              const SizedBox(height: 8),
              Text("Now Accepting EBT",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 16,),

              // Vendor info card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&auto=format&fit=crop&w=80&q=80',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "The PDX Farmer",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Farm fresh eggs, milk, and more. Lovingly raised by the Standley family for 24 years.",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Quantity selector
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Quantity",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Spacer(),
                  _quantityButton(Icons.remove, () {
                    if (quantity > 1) {
                      setState(() {
                        quantity--;
                      });
                    }
                  }),
                  const SizedBox(width: 10),
                  Text(
                    quantity.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 10),
                  _quantityButton(Icons.add, () {
                    setState(() {
                      quantity++;
                    });
                  }),
                ],
              ),

              const SizedBox(height: 12),

              // Add to cart button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final totalPrice = (quantity * 2.99);
                    final snackBar = SnackBar(
                      content: Text(
                        'Added $quantity item(s) - Total: \$${totalPrice.toStringAsFixed(2)}',
                      ),
                      backgroundColor: Colors.lightGreenAccent[200],
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent[200],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: Text(
                    "+ Add (\$${(quantity * 2.99).toStringAsFixed(2)})",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTag(String text, Color bgColor, Color textColor) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    ),
  );
}

Widget _quantityButton(IconData icon, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(16),
    child: Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, color: Colors.black),
    ),
  );
}
