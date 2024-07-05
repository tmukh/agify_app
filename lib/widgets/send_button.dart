// lib/widgets/send_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/age_bloc.dart';
import '../blocs/age_event.dart';

class SendButton extends StatelessWidget {
  final TextEditingController controller;

  const SendButton({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final name = controller.text;
        if (name.isNotEmpty) {
          // Dispatch GetAge to bloc
          BlocProvider.of<AgeBloc>(context).add(GetAge(name));
        }
      },
      child: const Text('Send'),
    );
  }
}
