import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'weight_age_state.dart';

class WeightAgeCubit extends Cubit<WeightAgeState> {
  WeightAgeCubit() : super(WeightAgeInitial());
}
