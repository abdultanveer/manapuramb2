import 'dart:io';
import 'package:manapuramb2/dartexs/callbacks/callback_phno.dart';

class Srikumar{

  void getData(Mobileph mobileph){
    sleep(Duration(seconds:10));
    print("i have got the data");
    mobileph.callBack();
  }
}