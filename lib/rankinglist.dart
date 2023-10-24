import 'package:flutter/material.dart';
import 'package:kanbagisla/drawer.dart';

class RankingList extends StatefulWidget {
  const RankingList({super.key});

  @override
  State<RankingList> createState() => _RankingListState();
}

class _RankingListState extends State<RankingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text("Sıralama Listesi"),
      ),
      body: const Center(child: Text("Sıralama Listesi")),
    );
  }
}
