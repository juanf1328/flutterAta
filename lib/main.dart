import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'screens/login.dart';
import 'screens/main_page.dart';
// import 'screens/register.dart';
// import 'screens/formulario.dart';
// import 'screens/company_register2.dart';
// import 'screens/finish_register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final router = FluroRouter();

  MyApp() {
    defineRoutes(router);
  } 
 
  void defineRoutes(FluroRouter router) {
    router.define('/', handler: Handler(handlerFunc: (context, params) => Login()));
   router.define('/main', handler: Handler(handlerFunc: (context, params) => MainPage(
  onLogout: () {
    // Lógica de cierre de sesión aquí
    print('Logout clicked');
  },
)));

    // router.define('/register', handler: Handler(handlerFunc: (context, params) => Register(onContinueClick: null,)));
    // router.define('/CompanyRegister1', handler: Handler(handlerFunc: (context, params) => Formulario(onSubmit: null,)));
    // router.define('/CompanyRegister2', handler: Handler(handlerFunc: (context, params) => CompanyRegister2(onSubmit: null,)));
    // router.define('/finish', handler: Handler(handlerFunc: (context, params) => FinishRegister(onSubmit: null,)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      onGenerateRoute: router.generator,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
