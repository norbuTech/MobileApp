import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';
import 'package:flutter_mapp/widgets/trasaction/add_transaction_form.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Transaction', style: TypoStyles().kPageHeader),
        backgroundColor: Color(0xFFEA6C43),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back when back button is pressed
          },
        ),
      ),
      body: AddTransactionForm(),
    );
  }
}
