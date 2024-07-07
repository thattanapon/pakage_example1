import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เกี่ยวกับเรา"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("เกี่ยวกับเรา"),
            Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
          ],
        ),
      ),
    );
  }
}
