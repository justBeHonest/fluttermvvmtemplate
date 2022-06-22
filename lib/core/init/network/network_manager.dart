import 'package:dio/dio.dart';
import 'package:fluttermvvmtemplate/core/constants/enums/preferences_keys.dart';
import 'package:fluttermvvmtemplate/core/init/cache/locale_manager.dart';

class NetworkManager {
  static late NetworkManager _instance;
  static NetworkManager get instance {
    if (_instance == null) _instance = NetworkManager._init();
    return _instance;
  }

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      headers: {
        "val": LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
      },
    );
    dio = Dio(baseOptions);
  }

  late Dio dio;
}
