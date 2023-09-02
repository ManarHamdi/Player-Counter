import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';
import 'state.dart';
class HomeBage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
        builder:(context,state){
          return Scaffold(
            appBar: AppBar(backgroundColor: const Color(0xFFFF9900),title: const Text("Points counter")),
            body: Container(padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  SizedBox(height:16),
                  IntrinsicHeight(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Column(
                            children: [
                              const Text("Team A",style: TextStyle(fontSize: 24)),
                              Text("${BlocProvider.of<CounterCubit>(context).teamA}",
                                  style: const TextStyle(fontSize: 70)),
                              ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).CounterIncreamnet("A", 1);
                              },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFFFF9900)), ),
                                child: const Text("Add 1 point",style: TextStyle(color: Colors.black)),
                              ),
                              ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).CounterIncreamnet("A", 2);

                              },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFFFF9900)), ),
                                child: const Text("Add 2 point",style: TextStyle(color: Colors.black)),
                              ),
                              ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).CounterIncreamnet("A", 3);

                              },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFFFF9900)), ),
                                child: const Text("Add 3 point",style: TextStyle(color: Colors.black)),
                              )

                            ],
                          ),
                          const SizedBox(width: 35,),
                          const VerticalDivider(color: Colors.grey,thickness: 1),
                          const SizedBox(width: 35,),
                          Column(

                            children: [
                              const Text("Team B",style: TextStyle(fontSize: 24)),
                              Text("${BlocProvider.of<CounterCubit>(context).teamB}",style: const TextStyle(fontSize: 70)),
                              ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).CounterIncreamnet("B", 1);

                              },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFFFF9900)), ),
                                child: const Text("Add 1 point",style: TextStyle(color: Colors.black)),
                              ),
                              ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).CounterIncreamnet("B", 2);

                              },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFF9900)), ),
                                child: const Text("Add 2 point",style: TextStyle(color: Colors.black)),
                              ),
                              ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).CounterIncreamnet("B", 3);

                              },
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFF9900)), ),
                                child: const Text("Add 3 point",style: TextStyle(color: Colors.black)),
                              )

                            ],
                          )
                        ]),
                  ),
                  const SizedBox(height: 60,),
                  ElevatedButton(onPressed:(){
                    BlocProvider.of<CounterCubit>(context).reset();
                  },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFF9900)), ),
                    child: const Text("Reset",style: TextStyle(color: Colors.black)),
                  )
                ],
              ),
            ),
          );
        } ,
        listener: (context,state){}

    );

  }
}