import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [


      ],
      child: MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body:  ListView.builder(itemBuilder: (context,index){
            return Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.network("https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg"),
                  Column(
                    children: [
                      Text("Data"),
                      Text("Data"),

                      Text("Data"),

                      Text("Data"),

                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
