
// lib/blocs/age_state.dart
import 'package:equatable/equatable.dart';
import '../models/person_model.dart';
abstract class AgeState extends Equatable {
  const AgeState();

  @override
  List<Object> get props => [];
}

class AgeInitial extends AgeState {}

class AgeLoading extends AgeState {}

class AgeLoaded extends AgeState {
  final PersonModel person;

  const AgeLoaded(this.person);

}

class AgeError extends AgeState {
  final String message;

  const AgeError(this.message);


}
