import 'package:flutter/material.dart';

class BrowseOrderScreen extends StatefulWidget {
  const BrowseOrderScreen({Key? key}) : super(key: key);

  @override
  State<BrowseOrderScreen> createState() => _BrowseOrderScreenState();
}

class _BrowseOrderScreenState extends State<BrowseOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('BrowseOrder')
      ],
    );
  }
}
