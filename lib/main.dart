import 'package:flutter/material.dart';

void main() {
  runApp(const BioDataApp());
}

class BioDataApp extends StatelessWidget {
  const BioDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio Data',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const BioDataScreen(),
    );
  }
}

class BioDataScreen extends StatefulWidget {
  const BioDataScreen({super.key});

  @override
  State<BioDataScreen> createState() => _BioDataScreenState();
}

class _BioDataScreenState extends State<BioDataScreen> {
  final _formKey = GlobalKey<FormState>();

  // Text Controllers - Personal Details
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _dobController = TextEditingController();
  final _genderController = TextEditingController();

  // Text Controllers - Educational Background
  final _elemController = TextEditingController();
  final _jhsController = TextEditingController();
  final _shsController = TextEditingController();
  final _collegeController = TextEditingController();

  // Text Controllers - Family Background
  final _fatherController = TextEditingController();
  final _motherController = TextEditingController();
  final _siblingsController = TextEditingController();

  // Text Controllers - Character References
  final _ref1NameController = TextEditingController();
  final _ref1ContactController = TextEditingController();
  final _ref2NameController = TextEditingController();
  final _ref2ContactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bio Data'),
        backgroundColor: const Color(0xFF2C5E64),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // --- PERSONAL DETAILS SECTION ---
                const Text(
                  'Personal Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2C5E64)),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Contact Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.home),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _dobController,
                  decoration: const InputDecoration(
                    labelText: 'Date of Birth (DD/MM/YYYY)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _genderController,
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.people),
                  ),
                ),
                const SizedBox(height: 20),

                // --- EDUCATIONAL BACKGROUND SECTION ---
                const Text(
                  'Educational Background',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2C5E64)),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _elemController,
                  decoration: const InputDecoration(
                    labelText: 'Elementary School',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _jhsController,
                  decoration: const InputDecoration(
                    labelText: 'Junior High School',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _shsController,
                  decoration: const InputDecoration(
                    labelText: 'Senior High School (Track/Strand)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _collegeController,
                  decoration: const InputDecoration(
                    labelText: 'College / Course',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school),
                  ),
                ),
                const SizedBox(height: 20),

                // --- FAMILY BACKGROUND SECTION ---
                const Text(
                  'Family Background',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2C5E64)),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _fatherController,
                  decoration: const InputDecoration(
                    labelText: "Father's Name & Occupation",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.family_restroom),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _motherController,
                  decoration: const InputDecoration(
                    labelText: "Mother's Name & Occupation",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.family_restroom),
                  ),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _siblingsController,
                  maxLines: 2,
                  decoration: const InputDecoration(
                    labelText: 'Sibling(s) Name(s)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.group),
                  ),
                ),
                const SizedBox(height: 20),

                // --- CHARACTER REFERENCES SECTION ---
                const Text(
                  'Character References',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2C5E64)),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  controller: _ref1NameController,
                  decoration: const InputDecoration(
                    labelText: 'Reference 1 (Name & Position)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                const SizedBox(height: 8),

                TextFormField(
                  controller: _ref1ContactController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Reference 1 Contact Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone_outlined),
                  ),
                ),
                const SizedBox(height: 12),

                TextFormField(
                  controller: _ref2NameController,
                  decoration: const InputDecoration(
                    labelText: 'Reference 2 (Name & Position)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                const SizedBox(height: 8),

                TextFormField(
                  controller: _ref2ContactController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Reference 2 Contact Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone_outlined),
                  ),
                ),
                const SizedBox(height: 25),

                // --- SUBMIT BUTTON ---
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Bio Data Submitted'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text('Name: ${_nameController.text}'),
                              Text('Email: ${_emailController.text}'),
                              Text('Phone: ${_phoneController.text}'),
                              Text('Address: ${_addressController.text}'),
                              Text('DOB: ${_dobController.text}'),
                              Text('Gender: ${_genderController.text}'),
                              const Divider(),
                              const Text('Education:', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Elementary: ${_elemController.text}'),
                              Text('JHS: ${_jhsController.text}'),
                              Text('SHS: ${_shsController.text}'),
                              Text('College: ${_collegeController.text}'),
                              const Divider(),
                              const Text('Family:', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Father: ${_fatherController.text}'),
                              Text('Mother: ${_motherController.text}'),
                              Text('Siblings: ${_siblingsController.text}'),
                              const Divider(),
                              const Text('References:', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('1. ${_ref1NameController.text} (${_ref1ContactController.text})'),
                              Text('2. ${_ref2NameController.text} (${_ref2ContactController.text})'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C5E64),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Submit Bio Data',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}