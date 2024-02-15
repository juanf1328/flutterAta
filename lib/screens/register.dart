import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final Function onContinueClick;

  Register({required this.onContinueClick});

  String perfil = "Individuo";

  void handleButtonClick(String selectedPerfil) {
    perfil = selectedPerfil;
  }

  void handleContinueClick() {
    // Redirige al usuario a la página de registro solo si el perfil es "Empresa"
    if (perfil == "Empresa") {
      onContinueClick();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'atawall',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      '¿Con qué perfil desea registrarte?',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => handleButtonClick("Individuo"),
                          style: ElevatedButton.styleFrom(
                            primary: perfil == "Individuo" ? Colors.green : Colors.grey[900],
                            padding: EdgeInsets.all(15),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(width: 10),
                              Text('Individuo', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () => handleButtonClick("Empresa"),
                          style: ElevatedButton.styleFrom(
                            primary: perfil == "Empresa" ? Colors.green : Colors.grey[900],
                            padding: EdgeInsets.all(15),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.business),
                              SizedBox(width: 10),
                              Text('Empresa', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Perfil de cuenta destinado a todo tipo de Empresas que bla bla Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: handleContinueClick,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[900],
                        padding: EdgeInsets.all(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.send),
                          SizedBox(width: 10),
                          Text('Registrarme', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.all(10),
                          ), child: null, 
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[900],
                            padding: EdgeInsets.all(10),
                          ), child: null,
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[900],
                            padding: EdgeInsets.all(10),
                          ), child: null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
