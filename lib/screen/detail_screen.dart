import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Halaman Detail'),
      ),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 10),
          child: Text('Detail Page'),
        ),
      )),
    );
  }
}
