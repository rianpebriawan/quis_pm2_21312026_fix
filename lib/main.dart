import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.red, // Set app bar color to red
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset(
                  'Image/asset/UNIVERSITASTEKNOKRAT.png', // Ubah dengan path gambar yang sesuai
                  height: 100,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Universitas Teknokrat Indonesia',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red, // Set the text color to red
                      ),
                    ),
                    Text(
                      "ASEAN's Best Private University",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black, // Set the text color to yellow
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                fillColor: Colors.yellow, // Set text field background color to yellow
                filled: true,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Colors.green, // Set text field background color to green
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _loginPressed();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set button background color to green
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _loginPressed() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Lakukan proses validasi login sesuai kebutuhan aplikasi Anda
    // Contoh sederhana: Cek apakah username dan password sesuai atau tidak
    if (username == 'teknorat' && password == 'password') {
      _showAlertDialog(context, 'Login Berhasil');
    } else {
      _showAlertDialog(context, 'Login Gagal');
    }
  }

  void _showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Info'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
