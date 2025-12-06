import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/features/home/cubit/state.dart';
import 'package:task2/features/home/items.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
    : super(
        HomeInitial(
          items: [
            Items(name: 'Item 1', isFav: false),
            Items(name: 'Item 2', isFav: false),
            Items(name: 'Item 3', isFav: false),
            Items(name: 'Item 4', isFav: false),
            Items(name: 'Item 5', isFav: false),
            Items(name: 'Item 6', isFav: false),
          ],
        ),
      );
  void addFav(Items item) {
    item.isFav = !item.isFav;
    emit(HomeFav(items: state.items));
  }
}
