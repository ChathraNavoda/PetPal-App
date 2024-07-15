part of 'get_items_bloc.dart';

sealed class GetItemsEvent extends Equatable {
  const GetItemsEvent();

  @override
  List<Object> get props => [];
}

class GetItems extends GetItemsEvent {}
