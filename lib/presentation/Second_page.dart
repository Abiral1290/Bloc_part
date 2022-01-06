
import 'package:bloc_pat/Counter_model.dart';
import 'package:bloc_pat/presentation/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../logic/cubit_state.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Second_page()
    );
  }
}
class Second_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Second_page();
  }
}
class _Second_page extends State<Second_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(
            MyHomePage(title: "MyHomePage")
          );
        }
        ,
            icon: Icon(Icons.arrow_back)),
        title: Text("Second Page"
        ),

      ),
      body: Column(
        children:[
          BlocBuilder<Cubit_coun, Counter_model>(
          builder : (context, state){
      if (state.Counter ==2){
      return Text(
      "This is Fun${state.Counter.toString()}"
      );
      }
      if (state.Counter == 5){
      return Text(
      state.Counter.toString()
      );
      }
      return Text(
      state.Counter.toString(),
      style: Theme.of(context).textTheme.headline4,
      );
      }
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: (){
                  BlocProvider.of<Cubit_coun>(context).increament();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: (){
                  BlocProvider.of<Cubit_coun>(context).decreament();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.add),
              )
            ],
          ),
          // FlatButton(
          //   onPressed:(){
          //     Navigator.of(context).pop(
          //         MyHomePageState();
          //     );
          //   },
          //   child: Text("Navigate"),
          //   color: Colors.blueGrey,
          // )
        ],
      )

    );
  }
}