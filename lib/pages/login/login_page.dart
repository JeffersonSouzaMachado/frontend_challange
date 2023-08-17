import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';
import 'package:frontend_challange/pages/home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(color: white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/playstore.png',
                  ),
                  Image.asset(
                    'assets/images/github.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 5),
              child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: slateGrey)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: slateGrey, width: 1),
                        )),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.visibility),
                        labelText: 'Senha',
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: slateGrey)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: slateGrey, width: 1),
                        )),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
              child: SizedBox(
                height: 50,
                width: size.width,
                child: ElevatedButton(
                    onPressed: () {
                      log('Touched on login');
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: const Text('Entrar')),
              ),
            ),
            TextButton(
              onPressed: () {
                log('Cadastro');
              },
              child: const Text('Cadastro'),
            ),
            TextButton(
              onPressed: () {
                log('forgot pass');
              },
              child: const Text(
                'Esqueci minha senha',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
