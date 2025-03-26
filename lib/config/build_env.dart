// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/foundation.dart';

enum Environment { LOCAL, DEV, PROD }

class Env {
  static Map<String, dynamic> _config = {};

  static const String _environment =
      String.fromEnvironment('ENV', defaultValue: 'LOCAL');

  static Future<void> init() async {
    log('********* Env : ${Env._environment} **********');

    switch (Env._environment) {
      case 'LOCAL':
        _config = _Config.localConstants;
        break;
      case 'DEV':
        _config = _Config.devConstants;
        break;
      case 'PROD':
        _config = _Config.prodConstants;
        break;
      default:
        _config = _Config.devConstants;
    }
  }

  static String get HOST_NAME {
    return _config[_Config.HOST_NAME];
  }

  static String get BASE_URL {
    return _config[_Config.BASE_URL];
  }

  static String get BASE_URL_TERMS {
    return _config[_Config.BASE_URL_TERMS];
  }

  static bool get IS_DEV {
    return _config[_Config.IS_DEV];
  }

  static bool get DEBUG {
    return _config[_Config.DEBUG];
  }

  static bool get HTTP_DEBUG {
    return _config[_Config.HTTP_DEBUG];
  }

  static String get KAKAO_NATIVE_KEY {
    return _config[_Config.KAKAO_NATIVE_KEY];
  }

  static String get KAKAO_JS_KEY {
    return _config[_Config.KAKAO_JS_KEY];
  }

  static String get GOOGLE_CLIENT_ID {
    return _config[_Config.GOOGLE_CLIENT_ID];
  }
}

class _Config {
  static const HOST_NAME = "HOST_NAME";
  static const BASE_URL = "BASE_URL";
  static const IS_DEV = "IS_DEV";
  static const DEBUG = "DEBUG";
  static const HTTP_DEBUG = "HTTP_DEBUG";
  static const KAKAO_NATIVE_KEY = "KAKAO_NATIVE_KEY";
  static const KAKAO_JS_KEY = "KAKAO_JS_KEY";
  static const BASE_URL_TERMS = "BASE_URL_TERMS";
  static const GOOGLE_CLIENT_ID = "GOOGLE_CLIENT_ID";

  static Map<String, dynamic> localConstants = {
    HOST_NAME: "localhost",
    BASE_URL: "http://localhost:3000",
    BASE_URL_TERMS: "http://localhost:3000",
    IS_DEV: true,
    DEBUG: kDebugMode,
    HTTP_DEBUG: kDebugMode,
    KAKAO_NATIVE_KEY: "TODO : YOU_SHOULD_REPLACE",
    KAKAO_JS_KEY: "TODO : YOU_SHOULD_REPLACE",
    GOOGLE_CLIENT_ID: "TODO : YOU_SHOULD_REPLACE",
  };

  static Map<String, dynamic> devConstants = {
    HOST_NAME: "localhost",
    BASE_URL: "http://localhost:3000",
    BASE_URL_TERMS: "http://localhost:3000",
    IS_DEV: true,
    DEBUG: kDebugMode,
    HTTP_DEBUG: kDebugMode,
    KAKAO_NATIVE_KEY: "TODO : YOU_SHOULD_REPLACE",
    KAKAO_JS_KEY: "TODO : YOU_SHOULD_REPLACE",
    GOOGLE_CLIENT_ID: "TODO : YOU_SHOULD_REPLACE",
  };

  static Map<String, dynamic> prodConstants = {
    HOST_NAME: "localhost",
    BASE_URL: "http://localhost:3000",
    BASE_URL_TERMS: "http://localhost:3000",
    IS_DEV: false,
    DEBUG: kDebugMode,
    HTTP_DEBUG: kDebugMode,
    KAKAO_NATIVE_KEY: "TODO : YOU_SHOULD_REPLACE",
    KAKAO_JS_KEY: "TODO : YOU_SHOULD_REPLACE",
    GOOGLE_CLIENT_ID: "TODO : YOU_SHOULD_REPLACE",
  };
}
