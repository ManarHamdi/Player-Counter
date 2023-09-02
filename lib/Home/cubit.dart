import 'package:basketballpointscounter/Home/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit <CounterState>{
  int teamA=0;
  int teamB=0;
  CounterCubit(super.initialState);
  void CounterIncreamnet(String team,int buttonNumber){
    if(team=="A"){
      teamA+=buttonNumber;
      emit(TeamAIncreamentState());
    }
    else {
      teamB+=buttonNumber;
      emit(TeamBIcreamentState());
    }
  }
void reset (){
    teamA=0;
    teamB=0;
    emit(TeamAIncreamentState());
    emit(TeamBIcreamentState());
}
}