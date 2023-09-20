import 'package:dionecapf/dados_cadastrais.dart';
import 'package:dionecapf/pagina1.dart';
import 'package:dionecapf/pagina2.dart';
import 'package:dionecapf/pagina3.dart';
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
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DadosCadastrais(
                          texto: 'Meus dados',
                          dados: ['Nome','Endereço'],
                        ),
                      ),
                    );
                  },
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text('Termos de uso e privacidade'),
                  ),
                  onTap: () {},
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text('Configurações'),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          children: [
            // para mudar: dois dedos no mouse do Mac
            Pagina1Page(),
            Pagina2Page(),
            Pagina3Page(),
          ],
        ),
      ),
    );
  }
}
