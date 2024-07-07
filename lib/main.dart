import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/age_bloc.dart';
import 'repositories/age_repository.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



/* 
  Some preface to this:

  I have never used the flutter_bloc package before.
  I've read the documentation, and done a not-so-simplistic approach. We could have basically skipped the repository and just used the bloc to fetch the data from the API, 
  but I wanted to show how to use a repository with the bloc pattern.

  I'm also transferring my skills with Redux here, so this might not be best practice.

*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Estimator',
      home: BlocProvider(
        create: (context) => AgeBloc(AgeRepository()),
        child: const HomeScreen(),
      ),
    );
  }
}
