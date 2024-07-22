import 'package:flutter/material.dart';

void main() {
  runApp(PasswordToggleApp());
}

class PasswordToggleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Toggle App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordToggleScreen(),
    );
  }
}

class PasswordToggleScreen extends StatefulWidget {
  @override
  _PasswordToggleScreenState createState() => _PasswordToggleScreenState();
}

class _PasswordToggleScreenState extends State<PasswordToggleScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Toggle'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
