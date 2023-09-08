import 'package:manapuramb2/dartexs/interfaces/havells_appliances.dart';
import 'package:manapuramb2/dartexs/interfaces/switchboard.dart';
import 'package:manapuramb2/dartexs/interfaces/geappliances.dart';


void main(){
  SwitchBoardListener switchBoardListener = GEAppliances();
  //HavellsAppliances(); //wiring
  switchBoardListener.switchOne();
  switchBoardListener.switchTwo();
  switchBoardListener.switchThree();
  switchBoardListener.switchFour();
}