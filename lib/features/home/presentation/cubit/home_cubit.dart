import 'package:bookia/features/home/data/models/best_seller_response/best_seller_response.dart';
import 'package:bookia/features/home/data/models/best_seller_response/product.dart';
import 'package:bookia/features/home/data/models/slider_response/slider.dart';
import 'package:bookia/features/home/data/models/slider_response/slider_response.dart';
import 'package:bookia/features/home/data/repo/home_repo.dart';
import 'package:bookia/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<Product> products = [];
  List<SliderModel>? sliders = [];

  getData() async {
    emit(HomeLoadingState());
    var result = await Future.wait([HomeRepo.getBestSeller(), HomeRepo.getSlider()]);

    var bestSellerRes = result[0] as BestSellerResponse?;
    var sliderRes = result[1] as SliderResponse?;

    if (bestSellerRes != null || sliderRes != null) {
      products = bestSellerRes?.data?.products ?? [];
      sliders = sliderRes?.data?.sliders ?? [];
      emit(HomeSuccessState());
    } else {
      emit(HomeErrorState());
    }
  }
}
