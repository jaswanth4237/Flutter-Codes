import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  bool isFarmer = true;
  String selectedValue = 'English';
  String businessType = 'Wholesaler';

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

  final Map<String, bool> crops = {
    'Wheat': false,
    'Rice': false,
    'Cotton': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(child: Image.asset('assets/logo_br.png')),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Smart AgriConnect",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              "Connecting Farmers Directly",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(20),
                    fillColor: Colors.green,
                    selectedColor: Colors.white,
                    color: Colors.black,
                    constraints: const BoxConstraints(
                      minHeight: 40,
                      minWidth: 150,
                    ),
                    isSelected: [isFarmer, !isFarmer],
                    onPressed: (index) {
                      setState(() => isFarmer = index == 0);
                    },
                    children: const [Text("Farmer"), Text("Buyer")],
                  ),
                  const SizedBox(height: 16),
                  if (isFarmer) buildFarmerForm() else buildBuyerForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFarmerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLabeledField("Full Name", nameController),
        buildLabeledField("Mobile Number", mobileController, isPhone: true,),
        buildLabeledField(
          "Aadhar Card (Optional)",
          aadharController,
          isOptional: true,
        ),
        buildLabeledField("Village", villageController),
        buildLabeledField("District", districtController),
        buildLabeledField("State", stateController),
        const SizedBox(height: 10),
        const Text(
          "Crops Grown",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        buildCropChips(),
        const SizedBox(height: 12),
        buildLabeledField(
          "Land Area (Optional)",
          landAreaController,
          isOptional: true,
        ),
        const SizedBox(height: 12),
        const Text(
          "Language Preference",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        buildLanguageDropdown(),
        const SizedBox(height: 20),
        buildRegisterButton("Register as Farmer"),
      ],
    );
  }

  Widget buildBuyerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLabeledField("Business Name", businessNameController),
        buildLabeledField("Mobile Number", mobileController, isPhone: true),
        const Text(
          "Business Type",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          value: businessType,
          decoration: buildInputDecoration("Business Type"),
          items:
              ["Wholesaler", "Retailer", "Distributor"]
                  .map(
                    (type) => DropdownMenuItem(value: type, child: Text(type)),
                  )
                  .toList(),
          onChanged: (val) => setState(() => businessType = val!),
        ),
        const SizedBox(height: 12),
        buildLabeledField("Business Address", businessAddressController),
        const SizedBox(height: 10),
        const Text(
          "Preferred Crops",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        buildCropChips(),
        const SizedBox(height: 12),
        buildLabeledField(
          "GSTIN (Optional)",
          gstinController,
          isOptional: true,
        ),
        const SizedBox(height: 12),
        const Text(
          "Language Preference",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        buildLanguageDropdown(),
        const SizedBox(height: 20),
        buildRegisterButton("Register as Buyer"),
      ],
    );
  }

  Widget buildLanguageDropdown() {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: buildInputDecoration("Select Language"),
      items:
          ['English', 'Telugu', 'Hindi', 'Malayalam', 'Tamil'].map((value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
      onChanged: (String? value) {
        setState(() => selectedValue = value!);
      },
    );
  }

  Widget buildLabeledField(
    String label,
    TextEditingController controller, {
    bool isPhone = true,
    bool isOptional = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          TextFormField(
            controller: controller,
            keyboardType: isPhone ? TextInputType.number : TextInputType.text,
            inputFormatters:
                isPhone ? [FilteringTextInputFormatter.digitsOnly] : null,
            maxLength: isPhone ? 10 : null,
            decoration: buildInputDecoration(
              "Enter $label",
            ).copyWith(counterText: ""),
            validator: (val) {
              if (isOptional) return null;
              return val == null || val.trim().isEmpty
                  ? 'This field is required'
                  : null;
            },
          ),
        ],
      ),
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

  Widget buildCropChips() {
    return Wrap(
      spacing: 10,
      children:
          crops.keys.map((crop) {
            return FilterChip(
              label: Text(crop),
              selected: crops[crop]!,
              selectedColor: Colors.green,
              onSelected: (val) => setState(() => crops[crop] = val),
            );
          }).toList(),
    );
  }

  Widget buildRegisterButton(String text) {
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          // handle submit
        }
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
