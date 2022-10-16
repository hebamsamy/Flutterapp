import 'package:flutter/material.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "ITI Assuit branch",
          style:
              TextStyle(fontFamily: "myfont", fontSize: 30, color: Colors.red),
        ),
        Expanded(child: Image.asset("assets/img/iti-logo.png")),
        // Image.network("https://www.iti.gov.eg/assets/images/iti-logo.png")
      ],
    );
  }
}
