import 'package:flutter/material.dart';

class CompanyRegister2 extends StatelessWidget {
  final Function onSubmit;

  CompanyRegister2({required this.onSubmit});

  void handleSubmit() {
    // Realiza las acciones necesarias al hacer clic en "Finalizar"
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
                    'Cuenta Empresa',
                    style: TextStyle(fontSize: 20, color: Colors.green[500]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Verificación de datos',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    child: Text(
                      'Nuestro equipo se pondrá en contacto con usted en la brevedad, sus datos están siendo procesados',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: null,
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[900],
                                padding: EdgeInsets.all(15),
                                shape: CircleBorder(),
                              ),
                              child: Text('1', style: TextStyle(fontSize: 20)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Recibirá un mail confirmando el registro',
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Se habilitará y otorgará el acceso completo a mercadoenergia',
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: null,
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[900],
                                padding: EdgeInsets.all(15),
                                shape: CircleBorder(),
                              ),
                              child: Text('2', style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Su cuenta será dada de alta para comenzar a operar',
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: null,
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[900],
                                padding: EdgeInsets.all(15),
                                shape: CircleBorder(),
                              ),
                              child: Text('3', style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: handleSubmit,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.green[500]!),
                      ),
                    ),
                    child: Text('Finalizar', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[500],
                          padding: EdgeInsets.all(10),
                        ), child: null,
                      ),
                    ], 
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
