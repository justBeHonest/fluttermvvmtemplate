// Dart imports:
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_model.dart';
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
    _dio = Dio(baseOptions);
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options..path += "veli";
        //options.
      },
      // onResponse: (e, handler) {
      //   // gelen json datasını modellere çevirme işlemi burada olabilir
      // },
      onError: (e, handler) {
        // return BaseError(e.message);
      },
    ));
  }

  late Dio _dio;

  Future dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        if (responseBody is List) {
          return responseBody.map((e) => model.fromJson(e)).toList();
        } else if (responseBody is Map) {
          return model.fromJson(responseBody as Map<String, Object>);
        }
        return responseBody;
        break;
      default:
    }
  }
}
