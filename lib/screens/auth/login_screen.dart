import 'package:accelerator_simplecode/constants/app_button_styles.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../generated/l10n.dart';
import '../characters_screen/characters_screen.dart';
import 'widgets/auth_alert_dialog.dart';
import 'widgets/auth_text_field.dart';

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
  void dispose() {
    super.dispose();
    _loginController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(AppAssets.images.logo),
            ),
            Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      S.of(context).login,
                      style: AppTextStyles.s14w400,
                    ),
                    const SizedBox(height: 8),
                    AuthTextField(
                      controller: _loginController,
                      maxLength: 8,
                      hintText: S.of(context).login,
                      icon: AppAssets.svg.loginIcon,
                      obscureText: false,
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
                    ),
                    const SizedBox(height: 10),
                    Text(
                      S.of(context).password,
                      style: AppTextStyles.s14w400,
                    ),
                    const SizedBox(height: 8),
                    AuthTextField(
                      controller: _passwordController,
                      maxLength: 16,
                      hintText: S.of(context).password,
                      icon: AppAssets.svg.passwordIcon,
                      obscureText: true,
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
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: AppButtonStyles.elevated,
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (_key.currentState != null &&
                            _key.currentState!.validate()) {
                          _loginController.clear();
                          _passwordController.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CharactersScreen(),
                            ),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AuthAlertDialog(
                                title: S.of(context).error,
                                content:
                                    S.of(context).inputErrorCheckLoginPassword,
                              );
                            },
                          );
                        }
                      },
                      child: Text(
                        S.of(context).signIn,
                        style: AppTextStyles.s16w400.copyWith(
                          color: AppColors.lightText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text('${S.of(context).dontHaveAnAccount}?'),
                        ),
                        TextButton(
                          style: AppButtonStyles.greenText,
                          child: Text(
                            S.of(context).create,
                          ),
                          onPressed: () {},
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
    );
  }
}
