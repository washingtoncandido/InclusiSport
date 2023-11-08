import 'package:flutter/material.dart';
import 'package:porto_projeto/pages/PostEvents_page.dart';
import 'package:porto_projeto/pages/home_page.dart';
import 'package:porto_projeto/pages/listEvents_page.dart';

//classe com as configurações do menu bottom

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int itemSelect = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ListEvents(),
    PostEvents(),
  ];
  Widget bodyController() {
    return widget;
  }

  //configuração do menu bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: _widgetOptions.elementAt(itemSelect)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: itemSelect,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil")
        ],
        onTap: (valor) {
          setState(() {
            itemSelect = valor;
          });
        },
      ),
    );
  }
}
