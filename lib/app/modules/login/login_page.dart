import 'package:dashboard_web/core/theme/theme.dart';
import 'package:dashboard_web/core/widgets/my_progress_indicator_overlay.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_module.dart';
import 'login_store.dart';
import 'widgets/button_login_widget.dart';
import 'widgets/input_login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var store = Modular.get<LoginStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return ProgressIndicatorOverlay(
            loading: store.isLoading,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                height: 400,
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const InputTextLogin(
                      hint: 'contato@dashboard.com',
                      label: 'E-mail',
                    ),
                    const SizedBox(height: 12),
                    const InputTextLogin(
                      hint: 'Senha',
                      label: 'Senha',
                    ),
                    const SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                        text: 'Caso tenha esquecido sua senha, ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'clique aqui',
                            style: TextStyle(
                              color: textButton,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Enviamos as informações de redefinição de senha para o seu e-mail. :)',
                                      style: TextStyle(
                                        color: textButton,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    action: SnackBarAction(
                                      label: 'Entendi!',
                                      textColor: textButton,
                                      // backgroundColor: backgroundColor,
                                      onPressed: () {},
                                    ),
                                    duration: const Duration(seconds: 3),
                                    width: 400, // Width of the SnackBar.
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    backgroundColor: primaryColor,
                                  ),
                                );
                              },
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    LoginButton(
                      onPressed: () async {
                        store.isLoading = true;
                        await Future.delayed(const Duration(seconds: 2));
                        store.isLoading = false;
                        Modular.to.pushNamedAndRemoveUntil(
                          AppModule.routeHome,
                          (p0) => false,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
