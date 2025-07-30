import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isFarmer = true;

  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final aadharController = TextEditingController();
  final villageController = TextEditingController();
  final districtController = TextEditingController();
  final stateController = TextEditingController();
  final landAreaController = TextEditingController();

  final businessNameController = TextEditingController();
  final businessAddressController = TextEditingController();
  final gstinController = TextEditingController();

  String languagePreference = 'English';
  String landUnit = 'Acres';
  String businessType = 'Wholesaler';

  final Map<String, bool> farmerCrops = {
    'Wheat': false,
    'Rice': false,
    'Cotton': false,
  };

  final Map<String, bool> buyerCrops = {
    'Wheat': false,
    'Rice': false,
    'Cotton': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9F9),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(child: Image.asset('assets/Logo_br.png')),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Smart AgriConnect",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
            Text("Connecting Farmers Directly",
                style: TextStyle(fontSize: 14, color: Colors.black54)),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: const [
          Icon(Icons.notifications_outlined, color: Colors.black87),
          SizedBox(width: 16),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(radius: 7, backgroundColor: Colors.orange),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Registration",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              ToggleButtons(
                borderRadius: BorderRadius.circular(20),
                fillColor: Colors.green,
                selectedColor: Colors.white,
                color: Colors.black,
                constraints: const BoxConstraints(minHeight: 40, minWidth: 150),
                isSelected: [isFarmer, !isFarmer],
                onPressed: (index) {
                  setState(() {
                    isFarmer = index == 0;
                  });
                },
                children: const [Text("Farmer"), Text("Buyer")],
              ),
              const SizedBox(height: 20),
              isFarmer ? buildFarmerForm() : buildBuyerForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFarmerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelField("Full Name"),
        buildTextField(nameController, "Enter your full name"),
        labelField("Mobile Number"),
        buildMobileField(mobileController),
        labelField("Aadhar Card (Optional)"),
        buildTextField(aadharController, "Enter Aadhar number"),
        labelField("Address"),
        buildTextField(villageController, "Village"),
        const SizedBox(height: 8),
        buildTextField(districtController, "District"),
        const SizedBox(height: 8),
        buildTextField(stateController, "State"),
        labelField("Crops Grown"),
        buildCropChips(farmerCrops),
        labelField("Land Area (Optional)"),
        Row(
          children: [
            Expanded(child: buildTextField(landAreaController, "Enter land area")),
            const SizedBox(width: 10),
            Expanded(
              child: DropdownButtonFormField<String>(
                value: landUnit,
                decoration: buildInputDecoration("Unit"),
                items: ["Acres", "Hectares"]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (val) => setState(() => landUnit = val!),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        labelField("Language Preference"),
        DropdownButtonFormField<String>(
          value: languagePreference,
          decoration: buildInputDecoration("Select Language"),
          items: ["English", "Telugu", "Hindi", "Tamil", "Malayalam"]
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (val) => setState(() => languagePreference = val!),
        ),
        const SizedBox(height: 16),
        buildRegisterButton("Register as Farmer"),
      ],
    );
  }

  Widget buildBuyerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelField("Business Name"),
        buildTextField(businessNameController, "Enter business name"),
        labelField("Mobile Number"),
        buildMobileField(mobileController),
        labelField("Business Type"),
        DropdownButtonFormField<String>(
          value: businessType,
          decoration: buildInputDecoration("Business Type"),
          items: ["Wholesaler", "Retailer", "Distributor"]
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (val) => setState(() => businessType = val!),
        ),
        labelField("Business Address"),
        buildTextField(businessAddressController, "Enter complete business address"),
        labelField("Preferred Crops"),
        buildCropChips(buyerCrops),
        labelField("GSTIN (Optional)"),
        buildTextField(gstinController, "Enter GSTIN number"),
        const SizedBox(height: 16),
        buildRegisterButton("Register as Buyer"),
      ],
    );
  }

  Widget labelField(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 6),
      child: Text(text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }

  Widget buildTextField(TextEditingController controller, String hint) {
    return TextFormField(
      controller: controller,
      decoration: buildInputDecoration(hint),
    );
  }

  InputDecoration buildInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.green, width: 2),
      ),
    );
  }

  Widget buildMobileField(TextEditingController controller) {
    return Row(
      children: [
        Expanded(child: buildTextField(controller, "Enter mobile number")),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text("Get OTP"),
        ),
      ],
    );
  }

  Widget buildCropChips(Map<String, bool> cropsMap) {
    return Wrap(
      spacing: 8,
      children: cropsMap.keys.map((crop) {
        return FilterChip(
          label: Text(crop),
          selected: cropsMap[crop]!,
          selectedColor: Colors.green[300],
          checkmarkColor: Colors.white,
          onSelected: (val) => setState(() => cropsMap[crop] = val),
        );
      }).toList(),
    );
  }

  Widget buildRegisterButton(String text) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}