import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String language = 'english';
  bool showLoginForm = false;
  String username = '';
  String password = '';

  void changeLanguage(String selectedLanguage) {
    setState(() {
      language = selectedLanguage;
    });
  }

  void handleUsernameChange(String value) {
    setState(() {
      username = value;
    });
  }

  void handlePasswordChange(String value) {
    setState(() {
      password = value;
    });
  }

  void handleLoginClick() {
    if (showLoginForm) {
      handleSubmit();
    } else {
      setState(() {
        showLoginForm = true;
      });
    }
  }

  void handleSubmit() {
    // Implementa la lógica de inicio de sesión aquí
    // Redirige al usuario a la página principal después del inicio de sesión exitoso.
    // Navigator.pushNamed(context, '/main');
  }

  void handleRegisterClick() {
    // Redirige al usuario a la página de registro
    // Navigator.pushNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(language == 'english' ? 'atawall' : 'atawall', style: TextStyle(fontSize: 30)),
              SizedBox(height: 10),
              Text(language == 'english' ? 'Welcome' : 'Bienvenido', style: TextStyle(fontSize: 18)),
              if (showLoginForm)
                Column(
                  children: [
                    TextField(
                      onChanged: handleUsernameChange,
                      decoration: InputDecoration(
                        labelText: language == 'english' ? 'Email' : 'Correo electrónico',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: handlePasswordChange,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: language == 'english' ? 'Password' : 'Contraseña',
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: handleLoginClick,
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text(showLoginForm ? 'Iniciar Sesión' : 'Login'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: handleRegisterClick,
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text(language == 'english' ? 'Register' : 'Registrarme'),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Implementa la lógica para la opción 'Need Help?'
                },
                child: Text(
                  language == 'english' ? 'Need Help?' : 'Necesitas ayuda?',
                  style: TextStyle(color: Colors.green, decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => changeLanguage('english'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      padding: EdgeInsets.all(10),
                    ),
                    child: Text('ENG', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => changeLanguage('spanish'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      padding: EdgeInsets.all(10),
                    ),
                    child: Text('ESP', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
