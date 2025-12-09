import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'height_slider_state.dart';

class HeightSliderCubit extends Cubit<HeightSliderState> {
  HeightSliderCubit() : super(HeightSliderInitial());
}
