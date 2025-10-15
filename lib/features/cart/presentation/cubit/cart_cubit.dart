import 'package:bookia/features/cart/data/models/cart_response/cart_response.dart';
import 'package:bookia/features/cart/data/repo/cart_repo.dart';
import 'package:bookia/features/cart/presentation/cubit/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitialState());

  CartResponse? cartResponse;

  getCart() async {
    emit(CartLoadingState());
    var res = await CartRepo.getCart();
    if (res != null) {
      cartResponse = res;
      emit(CartSuccessState());
    } else {
      emit(CartErrorState());
    }
  }

  removeCart({required int cartItemId}) async {
    final items = cartResponse?.data?.cartItems;
    if (items == null) return;

    items.removeWhere((item) => item.itemId == cartItemId);
    emit(CartSuccessState());
    try {
      var res = await CartRepo.removeFromCart(cartItemId: cartItemId);
      if (res != null) {
        cartResponse = res;
        emit(CartSuccessState());
      }
    } on Exception {
      emit(CartErrorState());
    }
  }

  updateCart({required int cartItemId, required int quantity}) async {
    var res = await CartRepo.updateCart(cartItemId: cartItemId, quantity: quantity);
    if (res != null) {
      cartResponse = res;
      emit(CartSuccessState());
    } else {
      emit(CartErrorState());
    }
  }
}
