import 'package:flutter/material.dart';

class AdDetail extends StatefulWidget {
  const AdDetail({super.key, required this.title});
  final String title;
  @override
  State<AdDetail> createState() => _AdDetailState();
}

class _AdDetailState extends State<AdDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title.toString()),
      ),
      body: Center(child: Text(widget.title.toString())),
    );
  }
}
