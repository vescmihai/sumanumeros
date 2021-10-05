import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suma',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Suma'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _resultado = 0;

  void _sumar() {
    setState(() {

      _resultado= int.parse(valor1.value.text) + int.parse(valor2.value.text);
    });
  }
  TextEditingController valor1 = new TextEditingController();
  TextEditingController valor2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              controller: valor1,
              decoration: InputDecoration(
                hintText: "valor 1"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: valor2,
              decoration: InputDecoration(
                  hintText: "valor 2"
              ),
            ),
            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: _sumar,
                child: Text("Sumar")
            ),
            SizedBox(height: 10,),
            Text(
              'RESULTADO:',
            ),
            Text(
              '$_resultado',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
