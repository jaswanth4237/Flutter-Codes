import 'package:flutter/material.dart';

class SalesUi extends StatefulWidget {
  const SalesUi({super.key});

  @override
  State<SalesUi> createState() => _SalesUiState();
}

class _SalesUiState extends State<SalesUi> {
  String selectedCrop = '';

  final quantityController = TextEditingController();
  String quantityUnit = 'Kg';

  final priceController = TextEditingController();

  bool organicCertified = false;
  bool pesticideFree = false;
  bool exportQuality = false;

  DateTime? selectedDate;

  void _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget cropOption(String name, String asset) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCrop = name;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color:
                  selectedCrop == name
                      ? Colors.green.shade100
                      : Colors.grey[200],
              border: Border.all(
                color: selectedCrop == name ? Colors.green : Colors.transparent,
                width: 2,
              ),
            ),

            padding: EdgeInsets.all(4), // spacing between border and avatar
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(asset),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(height: 6),
          Text(
            name,
            style: TextStyle(
              color:
                  selectedCrop == name
                      ? Colors.green[800]
                      : const Color.fromARGB(255, 0, 0, 0),
              fontWeight:
                  selectedCrop == name ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    quantityController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final units = ['kg', 'tons', 'quintal'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/Logo_br.png',
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Smart AgriConnect",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Connenting Framers Directly',
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_outlined, size: 28),
          SizedBox(width: 16),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.orange[600],
              shape: BoxShape.circle,
            ),
          ),
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
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List Your Crop',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Select Crop',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cropOption('Tomato', 'assets/tomato_sell.png'),
                      cropOption('Wheat', 'assets/wheat_sell.png'),
                      cropOption('Paddy', 'assets/paddy_sell.png'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Quantity Available',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: quantityController,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                            signed: false,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Enter quantity',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 48, 155, 51),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2.0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: quantityUnit,
                              isExpanded: true,
                              items:
                                  ['Kg', 'Tons', 'Quintals']
                                      .map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e),
                                        ),
                                      )
                                      .toList(),
                              onChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    quantityUnit = value;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Expected Price (per kg)',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: priceController,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Enter price per kg',
                      prefixText: '₹ ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(width: 2.0),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    'Quality Parameters',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: organicCertified,
                        activeColor: Colors.green,
                        onChanged:
                            (value) => setState(
                              () => organicCertified = value ?? false,
                            ),
                      ),
                      const Text('Organic Certified'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: pesticideFree,
                        onChanged:
                            (value) =>
                                setState(() => pesticideFree = value ?? false),
                      ),
                      const Text('Pesticide Free'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: exportQuality,
                        onChanged:
                            (value) =>
                                setState(() => exportQuality = value ?? false),
                      ),
                      const Text('Export Quality'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Harvest Date',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: _pickDate,
                    child: AbsorbPointer(
                      child: TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'dd-mm-yyyy',
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        controller: TextEditingController(
                          text:
                              selectedDate == null
                                  ? ''
                                  : '${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Add Photos',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.camera_alt_outlined,
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Upload crop photos',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Maximum 5 photos',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    'Additional Details',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: TextField(
                      maxLines: 4,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            'Add any additional information about your crop',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Crop listed successfully!'),
                          ),
                        );
                      },
                      child: const Text(
                        'List for sale',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
