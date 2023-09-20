import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Minha App'),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  SizedBox(height: 30,),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text('Dados cadastrais'),
                  ),
                  onTap: () {},
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text('Termos de uso e privacidade'),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text('Configurações'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
