import 'package:flutter/material.dart';
import 'package:kotovsk/modul/pages/Edit_page.dart';
import 'package:kotovsk/modul/pages/HomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(PasswordPage());
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
  const PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 69, 37),
        title: Text(
          'Вход в админ панель',
          style: GoogleFonts.philosopher(
            textStyle: TextStyle(
              height: 15,
              fontSize: 45,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(9, 69, 37, 1), // Dark green background
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
              width: 300, // Adjust width as needed
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Введите пароль',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                textInputAction: TextInputAction.done,
                maxLines: 1,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Validate the entered password (add your logic here)
                if (_password == 'admin123') {
                  // Navigate to the next screen (e.g., Home page)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => EditPage()),
                  );
                } else {
                  // Show "Incorrect Password" message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Неверно!')), // "Неверно!" means "Incorrect!"
                  );
                }
              },
              child: Text('Войти'), // "Login" in Russian
            ),
          ],
        ),
      ),
    );
  }
}
