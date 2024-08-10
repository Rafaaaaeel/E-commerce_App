import 'package:flutter/material.dart';

import '../../../../../../../../uikit/src/atoms/uikit_textfield_widget.dart';

class SearchProductPage extends StatelessWidget {
  const SearchProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                UikitTextfieldWidget.standard(
                  controller: TextEditingController(),
                  hintText: "Looking for something?",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
