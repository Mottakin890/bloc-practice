import 'package:bloc_practice/cubits/counter_cubit.dart';
import 'package:bloc_practice/cubits/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextStyle _textStyle = TextStyle(fontSize: 50, fontWeight: .w400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Bloc Counter App', style: TextStyle(fontWeight: .bold)),
        centerTitle: true,
      ),

      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.shade200,
                        offset: Offset(-2, 2),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.green.shade200,
                        offset: Offset(2, -2),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: .circular(12),
                  ),
                  child: (state is CounterStateValueUpdated)
                      ? Center(
                          child: Text(
                            state.counter.toString(),
                            style: _textStyle,
                          ),
                        )
                      : Center(child: Text('0', style: _textStyle)),
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: .center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        context.read<CounterCubit>().decrement();
                      },
                      color: Colors.red,
                      child: Icon(CupertinoIcons.minus),
                    ),
                    SizedBox(width: 30),
                    MaterialButton(
                      onPressed: () {
                        context.read<CounterCubit>().increment();
                      },
                      color: Colors.green,
                      child: Icon(CupertinoIcons.add),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
