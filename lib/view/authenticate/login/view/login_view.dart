import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/view/authenticate/login/viewmodel/login_view_model.dart';

import '../../../../core/base/view/base_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {},
      onPageBuilder: (BuildContext context, LoginViewModel value) => Scaffold(),
    );
  }
}
