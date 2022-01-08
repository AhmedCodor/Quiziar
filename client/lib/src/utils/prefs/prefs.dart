// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:client/src/utils/constants/constansts.dart' as CONSTANTS;
import 'package:get_storage/get_storage.dart';


class LocalStorage {
  final GetStorage _localStorage = GetStorage();

  bool isAppFirstLaunch(){
    bool isFirstLaunch = true; 
    if(_localStorage.read(CONSTANTS.kFirstLaunchKey) != null){
      isFirstLaunch = _localStorage.read(CONSTANTS.kFirstLaunchKey)!;
    } else {
      // saveUserID(const Uuid().v1());
      _localStorage.write(CONSTANTS.kFirstLaunchKey, false);
    }
    return isFirstLaunch;
  }

  /// saves the integer value responsible for the current theme
  void saveThemeOption(int option){
    _localStorage.write(CONSTANTS.kThemeKey, option);
  }

  /// gets the integer value responsible for the current theme
  int getThemeOption(){
    int retOption = _localStorage.read(CONSTANTS.kThemeKey) ?? 0;
    return retOption;
  }

  /// saves the path of user profile image locally
  void saveUserprofileImagePath(String profileImagePath){
    _localStorage.write(CONSTANTS.kprofileImagePathKey, profileImagePath);
  }

  /// gets the path of user profile image stored locally
  String getUserprofileImagePath(){
    String retVal = _localStorage.read(CONSTANTS.kprofileImagePathKey) ?? '';
    return retVal;
  }

  /// saves username in locally
  // void saveUserName(String userName){
  //   prefs.setString(CONSTANTS.kUserNameKey, userName);
  // }

  // /// gets username stored locally
  // String getUserName(){
  //   return prefs.getString(CONSTANTS.kUserNameKey) ?? '';
  // }

  // /// saves user Id locally 
  // void saveUserID(String userID){
  //   prefs.setString(CONSTANTS.kUserIDKey, userID);
  // }

  // /// gets user Id stored locally
  // String getUserID(){
  //   return prefs.getString(CONSTANTS.kUserIDKey) ?? '';
  // }
}