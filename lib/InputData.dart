import 'package:flutter/material.dart';
import 'Database.dart';

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

// TODO 入力フォームを作る
class _InputDataState extends State<InputData> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
              onChanged: (text) {
                // TODO: ここで取得したtextを使う
                String name = text;
              },
              autofocus: true,
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: 'Weight (kg)',
              ),
            ),
            ElevatedButton(
              child: Text('Registration'),
              onPressed: () {
                // TODO: 新規登録
                print(myController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}