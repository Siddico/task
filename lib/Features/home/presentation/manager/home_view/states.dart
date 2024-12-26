import 'package:task/Features/home/data/models/item.dart';

abstract class ItemState {}

class ItemInitial extends ItemState {}

class ItemLoaded extends ItemState {
  final List<Item> items;

  ItemLoaded(this.items);
}
