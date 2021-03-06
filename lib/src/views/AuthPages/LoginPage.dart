// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(35, 40, 50, 1.0),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height*0.25),
                    const Center(
                      child: Padding(
                        padding:  EdgeInsets.only(top:20.0),
                        child:  Text(
                          'Iniciar sesión',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 54,
                            fontFamily: 'Hello Calanthe'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.01),
                    Padding(
                      padding: const EdgeInsets.only(top:0.0,left:20,right: 20),
                      child: SizedBox(
                        width: size.width*0.30,
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          autocorrect: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                    color: Color.fromRGBO(27, 175, 138, 1),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(27, 175, 138, 1),
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: const Icon(
                              CupertinoIcons.mail_solid,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: 'Ingresar tu correo electronico',
                            hintStyle: const TextStyle(color: Colors.white),
                            helperStyle: const TextStyle(
                              color: Colors.white
                            ),
                            label: const Text(
                              'Correo Electronico',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lemonada'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'MatchPage'),
                        child: Container(
                          width: size.width*0.15,
                          height: size.height*0.05,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(27, 175, 138, 1),
                          ),
                          child: const Center(
                            child:  Text(
                              'Entrar',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lemonada',
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width*0.15,
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, 'SingInPage'),
                        child: const Center(
                          child:  Text(
                            '¿No tienes una cuenta?',
                            style: TextStyle(
                              color: Color.fromRGBO(27, 175, 138, 1),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}