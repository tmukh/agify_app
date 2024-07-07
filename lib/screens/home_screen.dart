import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/age_bloc.dart';
import '../blocs/age_state.dart';
import '../widgets/send_button.dart';
import '../widgets/age_result.dart';
import '../widgets/age_restart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 87, 139),
        title: const Text(
          'Age Estimator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      
      body: BlocListener<AgeBloc, AgeState>(
        listener: (context, state) {
          if (state is AgeError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                    'Unable to get age for given name, please try again with a different name.'),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AgeResult(),
              const SizedBox(height: 20),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First or Full name',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SendButton(controller: controller),
                   RestartButton(controller: controller),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
