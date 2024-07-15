import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_repository/pet_supplies_repository.dart';

part 'get_items_event.dart';
part 'get_items_state.dart';

class GetItemsBloc extends Bloc<GetItemsEvent, GetItemsState> {
  final ItemRepo _itemRepo;
  GetItemsBloc(this._itemRepo) : super(GetItemsInitial()) {
    on<GetItems>((event, emit) async {
      emit(GetItemsLoading());
      try {
        List<Item> items = await _itemRepo.getItems();
        emit(GetItemsSuccess(items));
      } catch (e) {
        emit(GetItemsFailure());
      }
    });
  }
}
