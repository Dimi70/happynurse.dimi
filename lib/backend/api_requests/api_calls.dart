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

class GetUserCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl: 'https://jsonblob.com/api/jsonBlob/991329474415181824',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class UpdateUserFirstNameCall {
  static Future<ApiCallResponse> call({
    String firstName = '',
  }) {
    final body = '''
{
  "first_name": "${firstName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserFirstName',
      apiUrl:
          'https://jsonblob.com/api/jsonBlob/991329474415181824/user/function',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'first_name': firstName,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetUserFirstNameCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserFirstName',
      apiUrl: 'https://jsonblob.com/api/jsonBlob/991329474415181824/user/id',
      callType: ApiCallType.GET,
      headers: {
        'X-jsonblob': '991329474415181824',
      },
      params: {},
      returnBody: true,
    );
  }
}
