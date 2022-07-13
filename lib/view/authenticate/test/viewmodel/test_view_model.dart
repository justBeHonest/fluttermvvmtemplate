// Package imports:
import 'package:mobx/mobx.dart';

// Project imports:
import 'package:fluttermvvmtemplate/core/init/network/network_manager.dart';
import 'package:fluttermvvmtemplate/view/authenticate/test/model/test_model.dart';

part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  // core ise
  @observable
  int number = 0;
  @observable
  bool isLoading = false;

  // işlem yapıyorsan
  @computed
  bool get isEven => number % 2 == 0;

  // aksiyona giriyorsan
  @action
  void incrementNumber() {
    number++;
  }

  @action
  Future<void> getSampleRequest() async {
    isLoading = true;
    final list =
        await NetworkManager.instance.dioGet<TestModel>("x", TestModel());
    if (list is List) {
      // contuinue your life
    }
    isLoading = false;
  }

  // This is for change theme
  // void changeTheme() {
  //   Provider.of<ThemeNotifier>(context, listen: false)
  //       .changeValue(AppThemes.DARK);
  // }
}
