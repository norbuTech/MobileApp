import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';

class SummaryTransactions extends StatelessWidget {
  const SummaryTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Recent Transaction',
              style: TypoStyles().kSectionHeader,
              ),
            ),
          Container(
            child: const Column(
              children: [
                ListTile(
                  title: Text('title'),
                  subtitle: Text('subtitle'),
                  trailing: Text('Nu. 2000')
                ),
                 ListTile(
                  title: Text('title'),
                  subtitle: Text('subtitle'),
                  trailing: Text('Nu. 2000')
                ),
                ListTile(
                  title: Text('title'),
                  subtitle: Text('subtitle'),
                  trailing: Text('Nu. 2000')
                ),
                ListTile(
                  title: Text('title'),
                  subtitle: Text('subtitle'),
                  trailing: Text('Nu. 2000')
                ),
            ],
            ),
            ),
      ],),
    );
  }
}

