import 'package:flutter_bloc/flutter_bloc.dart';
import '../repositories/age_repository.dart';
import 'age_event.dart';
import 'age_state.dart';



//  AgeBloc takes in an AgeRepository and extends Bloc<AgeEvent, AgeState>, which
// according according to the documentation means that it will take in AgeEvent events and output AgeState states.
class AgeBloc extends Bloc<AgeEvent, AgeState> {
  final AgeRepository ageRepository;

  AgeBloc(this.ageRepository) : super(AgeInitial()) {
    on<GetAge>((event, emit) async {
      emit(AgeLoading());
      try {
        // If GetAge event is dispatched, we reach this and call getAge from the repository.
        final age = await ageRepository.getAge(event.name);
        emit(AgeLoaded(age));
      } catch (e) {
        emit(AgeError(e.toString()));
      }
    });

    on<ResetAge>((event, emit) async {
      emit(AgeInitial());
    });
  }
}
