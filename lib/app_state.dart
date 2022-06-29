import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  dynamic user = jsonDecode(
      '{\"id\":0,\"first_name\":\"Dimitri\",\"last_name\":\"van Oijen\",\"inbetween_name\":\"string\",\"status\":\"int\",\"id_person_data_main\":\"int\",\"email\":\"e@mai\",\"phone_number\":\"string\",\"avatar\":\"base64 JPG\",\"language\":\"string\",\"expires_in\":0,\"created_at\":\"date\",\"updated_at\":\"date\",\"function\":{\"id\":0,\"name\":\"function name\"},\"contact_person\":{\"id\":0,\"name\":\"name contact person\",\"phone\":\"012345\",\"email\":\"e@mail\",\"profile_picture\":\"base64\"},\"office\":{\"id\":0,\"city\":\"streetname\",\"street\":\"streetname\",\"number\":\"12\",\"number_additional\":\"B\",\"post_code\":\"1234AA\",\"email\":\"e@mail\",\"phone\":\"1234567890\",\"opening_times\":{},\"lat\":\"decimals(12,10)\",\"lng\":\"decimals(14,12)\"},\"preferences\":{\"availabity\":[{\"dow\":1,\"day_of_week\":\"Monday\",\"morning\":1,\"afternoon\":1,\"evening\":0,\"night\":0},{\"dow\":2,\"day_of_week\":\"Tuesday\",\"morning\":0,\"afternoon\":1,\"evening\":1,\"night\":1},{\"dow\":3,\"day_of_week\":\"Wednesday\",\"morning\":0,\"afternoon\":1,\"evening\":1,\"night\":1},{\"dow\":4,\"day_of_week\":\"Thursday\",\"morning\":0,\"afternoon\":1,\"evening\":1,\"night\":1},{\"dow\":5,\"day_of_week\":\"Friday\",\"morning\":0,\"afternoon\":1,\"evening\":1,\"night\":1},{\"dow\":6,\"day_of_week\":\"Saturday\",\"morning\":0,\"afternoon\":1,\"evening\":1,\"night\":1},{\"dow\":7,\"day_of_week\":\"Sunday\",\"morning\":0,\"afternoon\":1,\"evening\":1,\"night\":1}],\"working_area\":{\"lat\":\"decimals(12,10)\",\"lng\":\"decimals(14,12)\",\"distance\":\"int\"},\"sections\":[{\"id\":0,\"name\":\"name 0\"},{\"id\":10,\"name\":\"name 10\"},{\"id\":20,\"name\":\"name 20\"}]}}');
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
