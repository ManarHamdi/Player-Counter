import 'package:basketballpointscounter/Home/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Home/view.dart';
import 'Home/state.dart';

void main() {
  runApp(PointsCounter());
}
class PointsCounter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return BlocProvider<CounterCubit>(
    create: (context)=>CounterCubit(TeamAIncreamentState()),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeBage()
    ),
  );
  }
}

