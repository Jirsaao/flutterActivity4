import 'package:flutter/material.dart';
// import 'package:flutter_application/internacionalization/AppLocalizations.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/routing/routes.dart';

class FormLogin extends StatefulWidget {
  final String user;

  const FormLogin({Key? key, required this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(AppLocalizations.of(context).login),
          // actions: [
          //   DropdownButton<String>(
          //     value: _selectedLanguage,
          //     icon: const Icon(Icons.language),
          //     onChanged: (String? newValue) {
          //       setState(() {
          //         _selectedLanguage = newValue;
          //         if (_selectedLanguage == 'en') {
          //           Locale newLocale = const Locale('en', 'US');
          //           AppLocalizations.delegate.load(newLocale);
          //         } else if (_selectedLanguage == 'es') {
          //           Locale newLocale = const Locale('es', 'ES');
          //           AppLocalizations.delegate.load(newLocale);
          //         }
          //       });
          //     },
          //     items: [
          //       DropdownMenuItem(value: 'en', child: Text('English')),
          //       DropdownMenuItem(value: 'es', child: Text('Español')),
          //     ],
          //   ),
          // ],
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo_discovery',
                child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0558/6413/1764/files/Discovery_Channel_Logo_Design_History_Evolution_0_1024x1024.jpg?v=1694070082",
                  height: 300,
                  width: 400,
                ),
              ),
              TextFormField(
                controller: userController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el usuario';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Usuario',
                ),
              ),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  // if (value!.isEmpty || value.length < 8) {
                  //   return 'La contraseña debe tener al menos 8 caracteres';
                  // }
                  // if (!_containsLetterAndNumber(value)) {
                  //   return 'La contraseña debe contener letras y números';
                  // }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (userController.text == 'a' &&
                        passwordController.text == 'a') {
                      //con 'pushReplacementNamed' remplaza la ruta de inicio de sesion y confirma los datos de navegacion
                      Navigator.pushReplacementNamed(context, Routes.pageUser);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Error al ingresar, verifica los datos.'),
                        ),
                      );
                    }
                  }
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _containsLetterAndNumber(String value) {
    return RegExp(r'(?=.*[A-Za-z])(?=.*[0-9])').hasMatch(value);
  }
}

bool checkData(String user, String password) {
  String enteredUser = userController.text;
  String enteredPass = passwordController.text;
  return enteredUser == user && enteredPass == password;
}

TextEditingController userController = TextEditingController();
TextEditingController passwordController = TextEditingController();
