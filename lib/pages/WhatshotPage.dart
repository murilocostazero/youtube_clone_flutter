import 'package:flutter/material.dart';

class WhatshotPage extends StatefulWidget {
  const WhatshotPage({Key? key}) : super(key: key);

  @override
  _WhatshotPageState createState() => _WhatshotPageState();
}

class _WhatshotPageState extends State<WhatshotPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Whatshot Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
