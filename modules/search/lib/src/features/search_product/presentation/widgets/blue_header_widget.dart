import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BlueHeaderWidget extends StatelessWidget {
  const BlueHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 235, 235),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(0, 13),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(GTheme().sizes.m_16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('search:search_2'.v()),
              Text('search:search_3'.v()),
            ],
          ),
        ),
      ),
    );
  }
}
