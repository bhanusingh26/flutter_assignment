import 'package:boxigo_assignment/bloc/logistic_bloc.dart';
import 'package:boxigo_assignment/repository/logistic_repository.dart';
import 'package:boxigo_assignment/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Boxigo Assignment',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: BlocProvider(
            create: (context) =>
                LogisticBloc(logisticRepository: LogisticRepository())..add(const GetInventryResponse()),
            child: const HomePage()));
  }
}
