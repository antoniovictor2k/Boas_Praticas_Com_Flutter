import 'package:flutter/material.dart';

class DesafioPage extends StatefulWidget {
  const DesafioPage({super.key});

  @override
  State<DesafioPage> createState() => _DesafioPageState();
}

class _DesafioPageState extends State<DesafioPage> {

  Widget _body(){
    return SizedBox(
      
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 180,
          child: Image.asset("assets/imagens/logotinder.png"),
          
        ),
        SizedBox(height: 20,),
        Text("Location Changes", style: TextStyle(color: Colors.white, fontSize: 20),),
        SizedBox(height: 5,),
        Text("Plugin app for tinder", style: TextStyle(color: Colors.white),),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
print("Funcinando");
        }, 
        child: Text("Login with Facebook", style: TextStyle(color: Colors.blue[700]),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white
        ),
        )
      ],
    ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.pink[200],
          ),
          _body()
        ],
      ),
    );

  }
}