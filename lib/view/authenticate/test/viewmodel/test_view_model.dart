import 'package:mobx/mobx.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
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
}
