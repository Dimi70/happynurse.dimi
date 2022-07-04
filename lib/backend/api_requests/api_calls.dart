import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

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

class GetProfileFormCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfileForm',
      apiUrl: 'https://jsonblob.com/api/jsonBlob/991672230882852864',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class TestFormCall {
  static Future<ApiCallResponse> call({
    String param1 = '',
    bool param2,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'testForm',
      apiUrl: 'www.google.com',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'param1': param1,
        'param2': param2,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class TestJsonCall {
  static Future<ApiCallResponse> call({
    String param1 = '',
    bool param2,
  }) {
    final body = '''
{
  "p1": "${param1}",
  "p2": ${param2}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'testJson',
      apiUrl: 'www.google.com',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'param1': param1,
        'param2': param2,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
