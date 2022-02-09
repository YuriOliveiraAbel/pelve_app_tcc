import 'package:flutter/material.dart';

class TratmentView extends StatefulWidget {
  const TratmentView({Key? key}) : super(key: key);

  @override
  _TratmentViewState createState() => _TratmentViewState();
}

class _TratmentViewState extends State<TratmentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD4EC),
        title: const Text(
          'Tratamento',
          style: TextStyle(color: Color(0xFF636B76)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
