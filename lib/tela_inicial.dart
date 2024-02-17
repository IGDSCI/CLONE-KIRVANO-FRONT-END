// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tela_cadastro/login.dart';
import 'package:tela_cadastro/tela_cadastro.dart';
import 'package:accordion/accordion.dart';

class TelaInicialStl extends StatelessWidget {
  const TelaInicialStl({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicialStf(),
      routes: {
        '/login': (context) => LoginStl(),
        '/telaCadastro': (context) => TelaCadastroStl(),
      },
    );
  }
}

class TelaInicialStf extends StatefulWidget {
  const TelaInicialStf({super.key});
  @override
  State<TelaInicialStf> createState() => _TelaInicialStfState();
}

class _TelaInicialStfState extends State<TelaInicialStf> {

  String primeiroTitulo = 'Cadastro de conta';
  String primeiroSubtitulo =
      'Clique no botão Cadastre-se. Insira as informações\nsolicitadas e siga o fluxo de boas-vendas.';
  String segundoTitulo = 'Confirmação de e-mail';
  String segundoSubtitulo =
      'Acesse sua caixa de entrada e clique no link de\nconfirmação para validar seu cadastro.';
  String terceiroTitulo = 'Informações complementares';
  String terceiroSubtitulo =
      'Complete seu perfil adicionando\ninformações complementares.';
  String imgSegundaTela =
      'https://cdn-icons-png.flaticon.com/512/3534/3534124.png';

  void atualizarImg(String novoTexto) {
    setState(() {
      imgSegundaTela = novoTexto;
    });
  }

  void atualizarTitulo1(String novoTexto) {
    setState(() {
      primeiroTitulo = novoTexto;
    });
  }

  void atualizarSubtitulo1(String novoTexto) {
    setState(() {
      primeiroSubtitulo = novoTexto;
    });
  }

  void atualizarTitulo2(String novoTexto) {
    setState(() {
      segundoTitulo = novoTexto;
    });
  }

  void atualizarSubtitulo2(String novoTexto) {
    setState(() {
      segundoSubtitulo = novoTexto;
    });
  }

  void atualizarTitulo3(String novoTexto) {
    setState(() {
      terceiroTitulo = novoTexto;
    });
  }

  void atualizarSubtitulo3(String novoTexto) {
    setState(() {
      terceiroSubtitulo = novoTexto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 290),
              child: SizedBox(
                height: 900,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'data:image/png;base64,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',
                            width: 250,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              elevation: MaterialStateProperty.all(0),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Text(
                                'Início',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              elevation: MaterialStateProperty.all(0),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            child: Text(
                              'Funcionalidades',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              elevation: MaterialStateProperty.all(0),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            child: Text(
                              'Planos e taxas',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              elevation: MaterialStateProperty.all(0),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            child: Text(
                              'Ajuda',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/login');
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                )),
                                elevation: MaterialStateProperty.all(0),
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    return Colors.transparent;
                                  },
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/telaCadastro');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_add_alt_1_outlined,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Cadastre-se agora',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Simples,\nconfiável, lucrativa,\npara pessoas ambiciosas',
                                  style: TextStyle(fontSize: 42),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Receba os pagamentos das vendas de seus produtos e serviços digitais\ncomo e-books, cursos online e mentorias — com a menor taxa do mercado.',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 350),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/72/72125.png',
                                width: 300,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/telaCadastro');
                          },
                          child: Row(
                            children: [
                              Text(
                                'Cadastre-se agora',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              width: double.infinity,
              height: 900,
              color: const Color.fromARGB(255, 199, 199, 199),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Sua primeira venda no digital',
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                    Text(
                      'mais rápida do que você imagina',
                      style: TextStyle(fontSize: 48),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 160, left: 290),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 300,
                                height: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0))),
                                    onPressed: () {
                                      atualizarTitulo1('Cadastro de conta');
                                      atualizarSubtitulo1(
                                          'Clique no botão Cadastre-se. Insira as informações\nsolicitadas e siga o fluxo de boas-vendas.');
                                      atualizarTitulo2('Confirmação de e-mail');
                                      atualizarSubtitulo2(
                                          'Acesse sua caixa de entrada e clique no link de\nconfirmação para validar seu cadastro.');
                                      atualizarTitulo3(
                                          'Informações complementares');
                                      atualizarSubtitulo3(
                                          'Complete seu perfil adicionando\ninformações complementares.');
                                      atualizarImg(
                                          'https://cdn-icons-png.flaticon.com/512/3534/3534124.png');
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_rounded,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'Crie sua conta',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 300,
                                height: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0))),
                                    onPressed: () {
                                      atualizarTitulo1('Painel do produtor');
                                      atualizarSubtitulo1(
                                          'Uma vez logado e com os dados cadastrados, você já\npode criar um novo produto.');
                                      atualizarTitulo2(
                                          'Preencha as informações básicas');
                                      atualizarSubtitulo2(
                                          'Preencha as informações básicas sobre o seu produto,\ncomo o nome, descrição, categoria, e etc.');
                                      atualizarTitulo3('');
                                      atualizarSubtitulo3('');
                                      atualizarImg(
                                          'https://cdn-icons-png.flaticon.com/128/6372/6372367.png');
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_rounded,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'Cadastre seu produto',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 300,
                                height: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0))),
                                    onPressed: () {
                                      atualizarTitulo1('Link de vendas');
                                      atualizarSubtitulo1(
                                          'Agora você pode usar esse link gerado em suas\nestratégias de marketing, incorporando em sites, ou\nutilizando em campanhas de email marketing.');
                                      atualizarTitulo2('');
                                      atualizarSubtitulo2('');
                                      atualizarTitulo3('');
                                      atualizarSubtitulo3('');
                                      atualizarImg(
                                          'https://cdn-icons-png.flaticon.com/512/2660/2660366.png');
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_rounded,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'Comece a vender',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                          ),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    primeiroTitulo,
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                Text(
                                  primeiroSubtitulo,
                                  style: TextStyle(fontSize: 18),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 6, top: 10),
                                  child: Text(
                                    segundoTitulo,
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                Text(
                                  segundoSubtitulo,
                                  style: TextStyle(fontSize: 18),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 6, top: 10),
                                  child: Text(
                                    terceiroTitulo,
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                Text(
                                  terceiroSubtitulo,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Image.network(
                              imgSegundaTela,
                              width: 200,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            SizedBox(
              width: double.infinity,
              height: 900,
              child: Column(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Planos e taxas',
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                    Text(
                      'Ofereça uma experiência verdadeiramente exclusiva e atraente para os seus',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'membros através das nossas ferramentas de personalização.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 40),
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 660,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 190, 188, 188),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Padrão',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Receba pagamentos de\nforma simples, com uma plataforma sem\ncustos ocultos.',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: SizedBox(
                                        width: 350,
                                        height: 50,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                )),
                                            onPressed: () {},
                                            child: Text(
                                              'Garantir taxa',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            )),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(
                                  height: 180,
                                  width: 210,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 49, 49, 49),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Center(
                                      child: Text(
                                    '4,9% + R\$2,00',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 250,
                          width: 660,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 190, 188, 188),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Grandes contas',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Se você tem uma operação diferenciada com volume de vendas acima\nde 100k por mês, podemos ajudá-lo com taxas personalizadas.',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Entre em contato com nossa equipe comercial.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      children: [
                                        Icon(Icons.phone),
                                        Text(
                                          'Falar com um gerente',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 40),
                  child: Row(
                    children: [
                      Container(
                        height: 370,
                        width: 410,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 190, 188, 188),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/2592/2592258.png',
                                width: 90,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Segurança total',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'e conformidade sem concessões',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_box_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Segurança e criptografia de dados',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_box_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Certificado PCI DSS',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_box_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Segurança para gerenciar suas contas e\npagamentos',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Container(
                          height: 370,
                          width: 410,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 190, 188, 188),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/5303/5303805.png',
                                  width: 120,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Saque enviado para sua conta bancária',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'em minutos',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Escolha quando você quer receber',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Antecipação automatizada',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Container(
                          height: 370,
                          width: 410,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 190, 188, 188),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4564/4564998.png',
                                  width: 120,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Métodos de pagamentos aceitos',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'em minutos',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Cartão de crédito',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'PIX',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Boleto',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),

            Container(
              width: double.infinity,
              height: 700,
              color: const Color.fromARGB(255, 199, 199, 199),
              child: Row(
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 290),
                  child: SizedBox(
                    height: 400,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                        'Dúvidas\nfrequentes',
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Caso não encontre sua dúvida aqui,\nacesse nossa central de ajuda ao cliente.',
                          style: TextStyle(fontSize: 22),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 250,
                          height: 70,
                          child: ElevatedButton(style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)
                              )
                            )
                            ),
                              onPressed: (){}, 
                              child: Row(children: [
                            Text(
                              'Central de ajuda',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.help_outline,
                                color: Colors.white,
                                ),
                            ),
                          ],)),
                        ),
                      )
                    ],),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: SizedBox(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 800,
                          child: Accordion(paddingBetweenClosedSections: 0,children: [
                            AccordionSection(
                              paddingBetweenClosedSections: 0,
                              paddingBetweenOpenSections: 0,
                              headerPadding: EdgeInsets.all(0),
                              headerBackgroundColor: Colors.white,
                              contentBackgroundColor: Colors.white,
                              headerBorderColor: Colors.white,
                              contentBorderColor: Colors.white,
                              isOpen: false,
                              contentVerticalPadding: 10,
                              contentHorizontalPadding: 0,
                              rightIcon: Icon(Icons.keyboard_arrow_up_sharp),
                              header: const Text('01 Existe alguma cobrança para criar uma conta na Kirvano?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              content: const Text('A Kirvano é uma plataforma gratuita para montar seu negócio digital. Você não paga nada para começar, apenas uma porcentagem sobre as vendas.', style: TextStyle(fontSize: 18)),
                            ),
                          ]),
                        ),
                    
                        SizedBox(
                          width: 800,
                          child: Accordion(paddingListTop: 0,children: [
                          AccordionSection(
                            paddingBetweenClosedSections: 0,
                            paddingBetweenOpenSections: 0,
                            headerPadding: EdgeInsets.all(0),
                            headerBackgroundColor: Colors.white,
                            contentBackgroundColor: Colors.white,
                            headerBorderColor: Colors.white,
                            contentBorderColor: Colors.white,
                            isOpen: false,
                            contentVerticalPadding: 10,
                            contentHorizontalPadding: 0,
                            rightIcon: Icon(Icons.keyboard_arrow_up_sharp),
                            header: const Text('02 Vendo um produto físico, posso usar a Kirvano?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            content: const Text('A plataforma é exclusiva para produtos e serviços digitais.', style: TextStyle(fontSize: 18)),
                          ),
                        ]),
                      ),
                    
                      SizedBox(
                        width: 800,
                        child: Accordion(paddingListTop: 0,children: [
                          AccordionSection(
                            paddingBetweenClosedSections: 0,
                            paddingBetweenOpenSections: 0,
                            headerPadding: EdgeInsets.all(0),
                            headerBackgroundColor: Colors.white,
                            contentBackgroundColor: Colors.white,
                            headerBorderColor: Colors.white,
                            contentBorderColor: Colors.white,
                            isOpen: false,
                            contentVerticalPadding: 10,
                            contentHorizontalPadding: 0,
                            rightIcon: Icon(Icons.keyboard_arrow_up_sharp),
                            header: const Text('03 Para quem é a Kirvano?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            content: const Text('A Kirvano é uma plataforma completa para quem é produtor digital, afiliado ou para quem vende serviços on-line (telemedicina, closefriends, SaaS e etc).', style: TextStyle(fontSize: 18)),
                          ),
                        ]),
                      ),
                    
                      SizedBox(
                        width: 800,
                        child: Accordion(paddingListTop: 0,children: [
                          AccordionSection(
                            paddingBetweenClosedSections: 0,
                            paddingBetweenOpenSections: 0,
                            headerPadding: EdgeInsets.all(0),
                            headerBackgroundColor: Colors.white,
                            contentBackgroundColor: Colors.white,
                            headerBorderColor: Colors.white,
                            contentBorderColor: Colors.white,
                            isOpen: false,
                            contentVerticalPadding: 10,
                            contentHorizontalPadding: 0,
                            rightIcon: Icon(Icons.keyboard_arrow_up_sharp),
                            header: const Text('04 Quantos produtos posso vender pela Kirvano?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            content: const Text('Não há limite para o número de produtos digitais que você pode criar e vender na Kirvano.', style: TextStyle(fontSize: 18)),
                            ),
                        ]),
                      ),
                    
                      SizedBox(
                        width: 800,
                        child: Accordion(paddingListTop: 0,children: [
                          AccordionSection(
                            paddingBetweenClosedSections: 0,
                            paddingBetweenOpenSections: 0,
                            headerPadding: EdgeInsets.all(0),
                            headerBackgroundColor: Colors.white,
                            contentBackgroundColor: Colors.white,
                            headerBorderColor: Colors.white,
                            contentBorderColor: Colors.white,
                            isOpen: false,
                            contentVerticalPadding: 10,
                            contentHorizontalPadding: 0,
                            rightIcon: Icon(Icons.keyboard_arrow_up_sharp),
                            header: const Text('05 Qual a taxa para vendas realizadas?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            content: const Text('A Kirvano oferece a menor taxa do mercado para infoprodutores: 4,9% + R\$2,00 por venda aprovada.', style: TextStyle(fontSize: 18)),
                          ),
                        ]),
                      ),
                      ],
                    ),
                  ),
                ),
              ]),
              ),
              Container(
                width: double.infinity,
                height: 500,
                color: Color.fromARGB(255, 25, 25, 25),
                child: Padding(
                  padding: const EdgeInsets.only(left: 290, top: 120),
                  child: Row(children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.network('data:image/png;base64,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', 
                      width: 280,
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.only(left: 44),
                        child: Text(
                          'Simples, confiável, lucrativa,\npara pessoas ambiciosas',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 44, top: 30),
                        child: Row(children: [

                          SizedBox(
                            width: 50,
                            height: 50,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0),backgroundColor: Colors.blue,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8))
                            )),
                              onPressed: (){}, child: Icon(
                              Icons.work,
                              color: Colors.white,
                              ),),
                          ),
                                          
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0),backgroundColor: Colors.blue,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              )),
                                onPressed: (){}, child: Icon(
                                Icons.ondemand_video_rounded,
                                color: Colors.white,
                                ),),
                            ),
                          ),
                                          
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0),backgroundColor: Colors.blue,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              )),
                                onPressed: (){}, child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                ),),
                            ),
                          ),
                        ],),
                      )
                    ],),

                    Padding(
                      padding: const EdgeInsets.only(left: 180, top: 50),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          'Início',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            'Funcionalidades',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          ),
                        )
                      ],),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 120, top: 50),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          'Planos e taxas',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            'Ajuda',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          ),
                        )
                      ],),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 120),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text('Você pode baixar nosso app',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      
                        Image.network('https://miro.medium.com/v2/resize:fit:817/0*prx_syr8n4OIGwUp.png', width: 200,),
                        SizedBox(height: 20,),
                        Image.network('https://www.extra-imagens.com.br/criacao/03-hotsite/2021/03-mar/app/images/btn-apple.png', width: 200,)
                      ],),
                    )
                  ]),
                ),
              )
          ],
        ),
      ),
    );
  }
}
