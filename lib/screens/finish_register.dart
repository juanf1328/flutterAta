import 'package:flutter/material.dart';

class FinishRegister extends StatelessWidget {
  final Function onSubmit;

  FinishRegister({required this.onSubmit});

  void handleSubmit() {
    // Realiza las acciones necesarias al hacer clic en "Mas tarde"
    onSubmit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Form(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Felicitaciones',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Su empresa ya se encuentra registrada, sube una imagen de perfil (Logotipo) que le permita identificarte rápidamente en nuestra plataforma.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: handleSubmit,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      padding: EdgeInsets.all(15),
                    ),
                    child: Text('Mas tarde', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
