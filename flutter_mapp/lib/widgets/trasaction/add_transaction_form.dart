import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';
import 'package:image_picker/image_picker.dart';

class AddTransactionForm extends StatefulWidget {
  const AddTransactionForm({super.key});

  @override
  State<AddTransactionForm> createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends State<AddTransactionForm> {
  final TextEditingController _statement = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _image = TextEditingController();

  bool loading = false;

  final _formKey = GlobalKey<FormState>();

  // Define a list of account options
  final List<String> _accountOptions = ['Account 1', 'Account 2', 'Account 3'];
  String? _selectedAccount;

  // Define a list of expense options
  final List<String> _expenseOptions = ['Dinner', 'Shopping', 'Rent'];
  String? _selectedExpense;

  // Method to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _date.text = "${picked.toLocal()}".split(' ')[0]; // Format the date as per your requirement
      });
    }
  }
  
    XFile? _imageFile;

  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = image;
    });
  }
  Future<void> addTransaction() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });

      try {
        // Your transaction adding logic here
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }

      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      controller: _statement,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Statement',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter statement';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _date,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Date",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () => _selectDate(context),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter date';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Account",
                      ),
                      value: _selectedAccount,
                      items: _accountOptions.map((String account) {
                        return DropdownMenuItem<String>(
                          value: account,
                          child: Text(account),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedAccount = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Select account';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Expenses",
                      ),
                      value: _selectedExpense,
                      items: _expenseOptions.map((String expense) {
                        return DropdownMenuItem<String>(
                          value: expense,
                          child: Text(expense),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedExpense = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Select expenses';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _amount,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Amount in Rs",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter the amount';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 50,
                      width: 500,
                      child: Column(
                        children: [
                          if (_imageFile != null)
                            Expanded(
                              child: Image.file(
                                File(_imageFile!.path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ElevatedButton(
                            onPressed: _getImage,
                            child: Text('Upload the bill image'),
                          ),
                        ],
                      ),
                    ),
                    if (_imageFile != null) SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEA6C43),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: loading ? null : addTransaction,
                      child: loading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text('Confirm', style: TypoStyles().kSectionHeader),
                    ),
                  ),
                ],
                ),
                
              ),
              
            ],
          ),
        ),
      );
  }
}
