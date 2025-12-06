import 'package:task2/features/home/items.dart';

sealed class HomeState {
  final List<Items> items;
  HomeState({required this.items});
}

class HomeInitial extends HomeState {
  HomeInitial({required super.items});
}

class HomeFav extends HomeState {
  HomeFav({required super.items});
}
