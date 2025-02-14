import 'package:flutter/material.dart';

void main() => runApp(Incrementor());

class Incrementor extends StatelessWidget {
  const Incrementor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyProgram",
      theme:ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      // darkTheme: ThemeData.dark,
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

 void Incremenate(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Button_incrementator"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: 50,
          itemBuilder: (context, i)=> ListTile(
        title: Text("Bitcoin", style: TextStyle(color: Colors.yellow)
          ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: Incremenate,
          child: Icon(Icons.ac_unit_sharp),
      ),
    );
  }
}


