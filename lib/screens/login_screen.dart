import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();

  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Авторизация"),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              const Text(
                'Введите логин и пароль',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextFormField(
                controller: _loginController,
                maxLength: 8,
                onChanged: (val) {
                  setState(() {});
                },
                validator: (val) {
                  if (val == null || val.length < 3) {
                    return 'Логин должен содержать не менее 3 символов';
                  } else if (val != "qwerty") {
                    return "Неправильный логин";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Логин',
                  counterText: '${_loginController.text.length}/8',
                  contentPadding: const EdgeInsets.all(12),
                ),
              ),
              TextFormField(
                controller: _passwordController,
                maxLength: 16,
                obscureText: true,
                onChanged: (val) {
                  setState(() {});
                },
                validator: (val) {
                  if (val == null || val.length < 8) {
                    return 'Пароль должен содержать не менее 8 символов';
                  } else if (val != "123456ab") {
                    return "Неправильный пароль";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  counterText: '${_passwordController.text.length}/16',
                  contentPadding: const EdgeInsets.all(12),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if (_key.currentState != null &&
                        _key.currentState!.validate()) {
                      _loginController.clear();
                      _passwordController.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    } else {
                      showAlertDialog(context);
                    }
                  },
                  child: const Text('Вход'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Попробуйте снова",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          ElevatedButton(
            child: const Text("Закрыть"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
