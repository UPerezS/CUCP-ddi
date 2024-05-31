import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text.trim();
                String password = _passwordController.text.trim();
                if (username == 'uriel' && password == 'contraseña') {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Login Correcto'),
                      content: Text('Esoo Vamos!!!!!!!!!!!.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Login Incorrecto'),
                      content: Text('Usuario o contraseña incorrectos.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
