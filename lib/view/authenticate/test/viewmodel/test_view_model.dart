import 'package:flutter/cupertino.dart';
import 'package:fluttermvvmtemplate/core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  // This is for set context actually you should inherit this class from BaseView
  // late BuildContext context;

  // void setContext(BuildContext context) {
  //   this.context = context;
  // }

  // core ise
  @observable
  int number = 0;

  // işlem yapıyorsan
  @computed
  bool get isEven => number % 2 == 0;

  // aksiyona giriyorsan
  @action
  void incrementNumber() {
    number++;
  }

  // This is for change theme
  // void changeTheme() {
  //   Provider.of<ThemeNotifier>(context, listen: false)
  //       .changeValue(AppThemes.DARK);
  // }
}
