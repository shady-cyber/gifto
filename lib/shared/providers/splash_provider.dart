import 'package:flutter/material.dart';
import '../repositories/splash_repo.dart';
import '../utils/appConstatns.dart';

class SplashProvider extends ChangeNotifier {
  final SplashRepo splashRepo;

  SplashProvider({required this.splashRepo});
  final CodeController = TextEditingController();

  Future<bool> initConfig(BuildContext context) async {
   AppConstants.BASE_URL = await splashRepo.getConnectionString() ?? "";

    if(AppConstants.BASE_URL == ""){

      return false;
    }
    // ApiResponse apiResponse = await splashRepo.getConfig();
    // bool isSuccess = false;
    // if (apiResponse.response != null &&
    //     apiResponse.response.statusCode == 200) {
    //   isSuccess = true;
    //   notifyListeners();
    // } else {
    //   isSuccess = false;
    //   ApiChecker.checkApi(context, apiResponse);
    // }
    return true;
  }

  Future<bool> initSharedData() {
    return splashRepo.initSharedData();
  }

  Future<bool> removeSharedData() {
    return splashRepo.removeSharedData();
  }

  // Future<void> setLocation(String latitude, String longitude) {
  //   return splashRepo.setLocation(latitude, longitude);
  // }
}
