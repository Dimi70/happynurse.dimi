import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetVacanciesCall {
  static Future<ApiCallResponse> call({
    String filter = 'none',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getVacancies',
      apiUrl: 'https://weather-and-climate.com/flutter/test.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filter': filter,
      },
      returnBody: true,
    );
  }
}

class GetProfileCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfile',
      apiUrl: 'https://weather-and-climate.com/flutter/profile.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SetAvailabilityCall {
  static Future<ApiCallResponse> call({
    int setAvailability = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'setAvailability',
      apiUrl: 'http://weather-and-climate.com/flutter/profile.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'set_availability': setAvailability,
      },
      returnBody: true,
    );
  }
}

class ResetAvailabilityCall {
  static Future<ApiCallResponse> call({
    int clearAvailability = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'resetAvailability',
      apiUrl: 'http://weather-and-climate.com/flutter/profile.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'clear_availability': clearAvailability,
      },
      returnBody: true,
    );
  }
}
