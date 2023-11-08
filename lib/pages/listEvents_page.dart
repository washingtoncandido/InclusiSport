import 'package:flutter/material.dart';
import 'package:porto_projeto/main.dart';
import 'package:porto_projeto/testenav.dart';

//classe para listar os eventos
class ListEvents extends StatefulWidget {
  const ListEvents({super.key});

  @override
  State<ListEvents> createState() => _listEventsState();
}

class _listEventsState extends State<ListEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [MyWidget()],
      ),
    );
  }
}
