// lib/widgets/age_result.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/age_bloc.dart';
import '../blocs/age_state.dart';

class AgeResult extends StatelessWidget {
  const AgeResult({super.key});

  @override
  Widget build(BuildContext context) {
    // The blocbuilder here listens to the AgeBloc and rebuilds the UI based on the state.
    return BlocBuilder<AgeBloc, AgeState>(
      builder: (context, state) {
        // Could split error into it's own message, but I find the Snackbar pretty good
        switch (state.runtimeType) {
          case const (AgeInitial)|| const (AgeError):
            return const Text('Enter a name to get the age');
          case const (AgeLoading):
            return const CircularProgressIndicator();
          case const (AgeLoaded):
            final person = (state as AgeLoaded).person;
            return Text('The age of ${person.name} is ${person.age}');
          default:
            return Container();
        }
      },
    );
  }
}
