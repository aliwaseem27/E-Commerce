import 'package:e_commerce/utils/network.dart';

class InitializeApp {
  static initApp (){
    Network.initializeInterceptors();
  }
}