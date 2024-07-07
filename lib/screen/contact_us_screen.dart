import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข่าวสาร"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("ข่าวสาร"),
            Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
          ],
        ),
      ),
    );
  }
}
