part of 'get_items_bloc.dart';

sealed class GetItemsState extends Equatable {
  const GetItemsState();

  @override
  List<Object> get props => [];
}

final class GetItemsInitial extends GetItemsState {}

final class GetItemsFailure extends GetItemsState {}

final class GetItemsLoading extends GetItemsState {}

final class GetItemsSuccess extends GetItemsState {
  final List<Item> items;

  const GetItemsSuccess(this.items);
  @override
  List<Object> get props => [items];
}
