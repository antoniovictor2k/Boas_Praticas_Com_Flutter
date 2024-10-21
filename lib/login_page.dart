import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/imagens/logo2.jpg",
                  )),
              SizedBox(
                height: 40,
              ),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  senha = value;
                  print(senha);
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Senha", 
                    border: OutlineInputBorder(),
                    
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Bordas arredondadas
                      ),
                    ),
                    onPressed: () {
                      if (email == "antonio.severiano" && senha == "123") {
                        print("Correto");
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print("Errado");
                      }
                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      )
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
          ),
          _body(),
        ],
      ),
    );
  }
}
