import 'package:flutter/material.dart';

class FindLawyerScreen extends StatefulWidget {
  const FindLawyerScreen({Key? key}) : super(key: key);

  @override
  State<FindLawyerScreen> createState() => _FindLawyerScreenState();
}

class _FindLawyerScreenState extends State<FindLawyerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('FindLawyer')
      ],
    );
  }
}
