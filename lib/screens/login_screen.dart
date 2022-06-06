import 'package:flutter/material.dart';

import '../generated/l10n.dart';
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
      appBar: AppBar(title: Text(S.of(context).auth)),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Text(
                S.of(context).inputLoginAndPassword,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              TextFormField(
                controller: _loginController,
                maxLength: 8,
                onChanged: (val) {
                  setState(() {});
                },
                validator: (val) {
                  if (val != null) {
                    val = val.trim();
                    if (val.length < 3) {
                      return S.of(context).lengthErrorCheckLogin;
                    } else if (val != "qwerty") {
                      return S.of(context).inputErrorCheckLogin;
                    }
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: S.of(context).login,
                  counterText: '${_loginController.text.trim().length}/8',
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
                  if (val != null) {
                    if (val.length < 8) {
                      return S.of(context).lengthErrorCheckPassword;
                    } else if (val != "123456ab") {
                      return S.of(context).inputErrorCheckPassword;
                    }
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: S.of(context).password,
                  counterText: '${_passwordController.text.trim().length}/16',
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
                  child: Text(S.of(context).signIn),
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
          S.of(context).tryAgain,
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          ElevatedButton(
            child: Text(S.of(context).close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
