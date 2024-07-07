import 'package:equatable/equatable.dart';


// Using equatable so I don't have to override == and hashCode manually 
abstract class AgeEvent extends Equatable {
  const AgeEvent();

  @override
  List<Object> get props => [];
}

class GetAge extends AgeEvent {
  final String name;

  const GetAge(this.name);
}

class ResetAge extends AgeEvent {}
