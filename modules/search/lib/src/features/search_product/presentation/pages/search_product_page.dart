import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:genesis/genesis.dart';

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
                GTextfieldWidget.standard(
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