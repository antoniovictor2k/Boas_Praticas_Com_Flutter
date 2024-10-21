import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
   return HomePageState();
  }
  
}

class HomePageState extends State<HomePage> {

int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.person, size: 50,),
              accountName: Text("Antonio Severiano"), 
              accountEmail: Text("antonio.seveirano")
              ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              subtitle: Text("Tela de Inicio"),
              onTap: () {
                print("Home Print");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              subtitle: Text("Ir Para Tela de Login"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            )
          ],
        ),
      ),
      appBar: AppBar(

        title: Text("Home Page"),
          backgroundColor: Colors.red, // Altera a cor de fundo da AppBar
      ),
    
      body: Container(
       
        child: Center(
          child: Column( // Usando Column para organizar os textos verticalmente
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contador: $counter",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20), // Adiciona espaço entre os textos
              Text(
                "Este é um novo texto",
                style: TextStyle(fontSize: 24, color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
          floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
           backgroundColor: Colors.red, // Altera a cor de fundo da AppBar
        onPressed: () {
            setState(() {
          counter++;
            });
          print(counter);
        },),
    );
  }
  
}