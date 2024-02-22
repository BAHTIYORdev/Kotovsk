import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PasswordPage(),
    );
  }
}

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  String _password = '';

  void _addToPassword(String char) {
    setState(() {
      _password += char;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вход в админ панель'),
      ),
      backgroundColor: Color.fromRGBO(9, 69, 37, 100),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Введите пароль:',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              _password,
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 400, // Adjust width as needed
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Введите пароль',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                textInputAction: TextInputAction.done,
                maxLines: 1,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildKey('1'),
                _buildKey('2'),
                _buildKey('3'),
                _buildKey('4'),
                _buildKey('5'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildKey('6'),
                _buildKey('7'),
                _buildKey('8'),
                _buildKey('9'),
                _buildKey('0'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildKey('A'),
                _buildKey('B'),
                _buildKey('C'),
                _buildKey('D'),
                _buildKey('E'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildKey('F'),
                _buildKey('G'),
                _buildKey('H'),
                _buildKey('I'),
                _buildKey('J'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKey(String char) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () => _addToPassword(char),
        child: Text(
          char,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
