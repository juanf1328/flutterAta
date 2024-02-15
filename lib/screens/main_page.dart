import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final VoidCallback onLogout; // Cambiado a VoidCallback

  MainPage({required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Llamar a la función de cierre de sesión cuando sea necesario
            onLogout();
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
