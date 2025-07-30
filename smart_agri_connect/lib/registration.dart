import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _farmerFormKey = GlobalKey<FormState>();
  final _buyerFormKey = GlobalKey<FormState>();
  bool isFarmer = true;

  final mobileController = TextEditingController();
  final nameController = TextEditingController();
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
          children: const [
            Text(
              "Smart AgriConnect",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Connecting Farmers Directly',
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
          ],
        ),
        actions: [
          const Icon(Icons.notifications_outlined, size: 28, color: Colors.black),
          const SizedBox(width: 16),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.orange[600],
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Registration", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                ToggleButtons(
                  borderRadius: BorderRadius.circular(20),
                  fillColor: Colors.green,
                  selectedColor: Colors.white,
                  color: Colors.black,
                  constraints: const BoxConstraints(minHeight: 40, minWidth: 150),
                  isSelected: [isFarmer, !isFarmer],
                  onPressed: (index) => setState(() => isFarmer = index == 0),
                  children: const [Text("Farmer"), Text("Buyer")],
                ),
                const SizedBox(height: 20),
                isFarmer ? buildFarmerForm() : buildBuyerForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFarmerForm() {
    return Form(
      key: _farmerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          labelField("Full Name"),
          buildTextField(nameController, "Enter your full name"),
          labelField("Mobile Number"),
          buildMobileField(mobileController),
          labelField("Aadhar Card (Optional)"),
          buildTextField(aadharController, "Enter Aadhar number", required: false),
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
              Expanded(child: buildTextField(landAreaController, "Enter land area", required: false)),
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
      ),
    );
  }

  Widget buildBuyerForm() {
    return Form(
      key: _buyerFormKey,
      child: Column(
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
          buildTextField(gstinController, "Enter GSTIN number", required: false),
          const SizedBox(height: 16),
          buildRegisterButton("Register as Buyer"),
        ],
      ),
    );
  }

  Widget buildRegisterButton(String text) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          final isValid = isFarmer
              ? _farmerFormKey.currentState!.validate()
              : _buyerFormKey.currentState!.validate();

          if (isValid) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(isFarmer
                    ? "Farmer registration successful!"
                    : "Buyer registration successful!"),
                backgroundColor: Colors.green,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(isFarmer
                    ? "Please fill all required Farmer fields."
                    : "Please fill all required Buyer fields."),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  Widget labelField(String text) => Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 6),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      );

  Widget buildTextField(TextEditingController controller, String hint, {bool required = true}) {
    return TextFormField(
      controller: controller,
      decoration: buildInputDecoration(hint),
      validator: required
          ? (value) => value == null || value.trim().isEmpty ? "This field is required" : null
          : null,
    );
  }

  InputDecoration buildInputDecoration(String hint) => InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.green, width: 2),
        ),
      );

  Widget buildMobileField(TextEditingController controller) => Row(
        children: [
          Expanded(child: buildTextField(controller, "Enter mobile number")),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text("Get OTP"),
          ),
        ],
      );

  Widget buildCropChips(Map<String, bool> cropsMap) => Wrap(
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
