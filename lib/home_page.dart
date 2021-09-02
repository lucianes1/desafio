import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController resultController = TextEditingController();
  int number = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desafio"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Text(
              "Digite um número",
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: resultController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: "Digite um número",
              ),
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() {
                    resultController.text.isEmpty;
                  });
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            resultController.text.isNotEmpty
                ? Text(
                    "O resultado é ${result}",
                    style: TextStyle(fontSize: 15),
                  )
                : Text("Digite um valor no campo acima",
                    style: TextStyle(fontSize: 15),
                  ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                result = 0;
                number = int.parse(resultController.text);
                for (int i = 1; i < number; i++) {
                  if (i % 3 == 0 || i % 5 == 0) {
                    setState(() {
                      result = result + i;
                    });
                    print(i);
                  }
                }
              },
              child: Text("RESULTADO"),
            ),
          ],
        ),
      ),
    );
  }
}
