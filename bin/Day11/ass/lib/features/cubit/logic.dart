import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/state.dart';
// import 'package:task1/core/local_database.dart';

class NameCubit extends Cubit<NameState> {
  NameCubit() : super(InitialState());
}
