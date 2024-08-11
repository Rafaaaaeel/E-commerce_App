import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

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
                  hintText: "search:search_1".v(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension Strings on String {
  String v({String? fallback, List<String>? params}) {
    // dynamic value =

    return "text";
  }
}
