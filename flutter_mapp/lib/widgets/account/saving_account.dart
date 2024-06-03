import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';

class SavingAccount extends StatefulWidget {
  const SavingAccount({Key? key}) : super(key: key);

  @override
  State<SavingAccount> createState() => _SavingAccountState();
}

class _SavingAccountState extends State<SavingAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saving Account', style: TypoStyles().kPageHeader),
        backgroundColor: Color(0xFFEA6C43),
      ),
      body: Padding(
        padding: EdgeInsets.all(16), // Adjust as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/photo.jpg',
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Hi,  Tenzin Norbu', style: TypoStyles().kSectionHeader),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.savings,  
                       color: Colors.black,
                       size: 50.0,),
          
                      SizedBox(width: 10),
                      Text(
                        'Saving Account',
                        style: TypoStyles().kPageHeader
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'A/C: ',
                        style: TypoStyles().kPageHeader,
                      ),
                      Text(
                        '200383518',
                        style: TypoStyles().kSectionHeader,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Nu: ',
                        style: TypoStyles().kPageHeader,
                      ),
                      Text(
                        '2500',
                        style: TypoStyles().kSectionHeader,
                      ),
                    ],
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
