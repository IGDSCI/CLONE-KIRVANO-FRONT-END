// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tela_cadastro/configuracoes.dart';
import 'package:tela_cadastro/login.dart';
import 'package:tela_cadastro/tela_inicial.dart';

class TelaCadastroStl extends StatelessWidget {
  const TelaCadastroStl({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaCadastroStf(),
      routes: {
        '/login': (context) => LoginStl(),
        '/telaCadastro': (context) => TelaCadastroStl(),
        '/telaInicial': (context) => TelaInicialStl(),
        '/configuracoes': (context) => ConfiguracoesStl(),
      },
    );
  }
}


class TelaCadastroStf extends StatefulWidget {
  const TelaCadastroStf({super.key});
  @override
  State<TelaCadastroStf> createState() => _TelaCadastroStfState();
}


class _TelaCadastroStfState extends State<TelaCadastroStf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 380,
          height: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(
              width: 1,
              color: const Color.fromARGB(255, 190, 188, 188),
            ),
          ),

          child: Column(
            children: [
              SizedBox(height: 40),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/telaInicial');
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Image.network('data:image/png;base64,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', 
                  width: 280,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/login');
                    }, 
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                      )
                    ),

                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/telaCadastro');
                    }, 
                    child: Text(
                      'Nova Conta',
                      style: TextStyle(color: Colors.black),
                      )
                    ),
                ],
              ),
              SizedBox(height: 20),

              SizedBox(
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Nome e Sobrenome'),
                    ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('E-mail'),
                    ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Telefone'),
                    ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                width: 280,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Senha'),
                    ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                width: 280,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Confirmar senha'),
                    ),
                ),
              ),
              SizedBox(height: 20),

              Container(
                width: 280,
                height: 160,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 240, 240),
                  borderRadius: BorderRadius.all(Radius.circular(12)), 
                  border: Border.all(
                    width: 1,
                    color: Color.fromARGB(255, 218, 215, 215),
                )),
                child: Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text('  Sua senha deve conter:'),
                    )
                  ],),
                  
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.clear, color: Colors.red,),
                    ),
                    Text('Pelo menos 8 caracteres'),
                  ],),

                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.clear, color: Colors.red,),
                    ),
                    Text('Pelo menos 1 caractere especial'),
                  ],),

                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.clear, color: Colors.red,),
                    ),
                    Text('Pelo menos 1 letra minúscula'),
                  ],),

                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.clear, color: Colors.red,),
                    ),
                    Text('Pelo menos 1 letra maiúscula'),
                  ],),

                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.clear, color: Colors.red,),
                    ),
                    Text('As senhas digitadas conferem'),
                  ],)
                ]),
              ),
              SizedBox(height: 30),

              SizedBox(
                width: 280,
                height: 40,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ), 
                  child: Text(
                    'Criar conta grátis',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
