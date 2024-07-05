// lib/widgets/restart_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/age_bloc.dart';
import '../blocs/age_event.dart';

class RestartButton extends StatelessWidget {
    final TextEditingController controller;

  const RestartButton({required this.controller, super.key} );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor:
            WidgetStatePropertyAll(Color.fromARGB(255, 255, 67, 53)),
      ),
      onPressed: () {
        // So when we press the button, we dispatch the ResetAge event to the bloc..?
        BlocProvider.of<AgeBloc>(context).add(ResetAge());
        controller.clear();
      },
      child: const Text(
        'Restart',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
