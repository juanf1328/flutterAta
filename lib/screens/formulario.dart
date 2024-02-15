import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final Function onSubmit;

  Formulario({required this.onSubmit});

  Map<String, String> datos = {
    'pais': '',
    'nombreLegal': '',
    'rubro': '',
    'telefono': '',
    'responsableAlta': '',
    'apellidoYNombre': '',
    'mail': '',
  };

  void handleChange(String key, String value) {
    datos[key] = value;
  }

  void handleSubmit() {
    // Realiza las acciones necesarias con los datos del formulario
    print('Datos del formulario: $datos');
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cuenta Empresa',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Complete el siguiente formulario',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Form(
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                        value: datos['pais'],
                        onChanged: (value) => handleChange('pais', value.toString()),
                        items: [
                          DropdownMenuItem(value: 'opcion1', child: Text('Opción 1')),
                          DropdownMenuItem(value: 'opcion2', child: Text('Opción 2')),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Selecciona un país',
                          hintStyle: TextStyle(color: Colors.grey[600]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        value: datos['rubro'],
                        onChanged: (value) => handleChange('rubro', value.toString()),
                        items: [
                          DropdownMenuItem(value: 'opcion1', child: Text('Opción 1')),
                          DropdownMenuItem(value: 'opcion2', child: Text('Opción 2')),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Selecciona un rubro',
                          hintStyle: TextStyle(color: Colors.grey[600]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => handleChange('nombreLegal', value),
                        decoration: InputDecoration(
                          hintText: 'Nombre Legal',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => handleChange('telefono', value),
                        decoration: InputDecoration(
                          hintText: 'Tel.',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => handleChange('apellidoYNombre', value),
                        decoration: InputDecoration(
                          labelText: 'Responsable de alta',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => handleChange('mail', value),
                        decoration: InputDecoration(
                          hintText: 'Mail',
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: handleSubmit,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[900],
                          padding: EdgeInsets.all(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.send),
                            SizedBox(width: 10),
                            Text('Continuar', style: TextStyle(fontSize: 16)),
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
                              primary: Colors.grey[900],
                              padding: EdgeInsets.all(10),
                            ), child: null,
                          ),
                          SizedBox(width: 10),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
