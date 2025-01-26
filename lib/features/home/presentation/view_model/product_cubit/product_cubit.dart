import 'package:fake_store/features/home/data/models/data_model/product_model.dart';
import 'package:fake_store/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final HomeRepo homeRepo;

  ProductCubit(this.homeRepo) : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());
    var result = await homeRepo.fetchData();
    result.fold((failure) {
      emit(ProductFailure(failure.toString()));
    }, (products) {
      emit(ProductSuccess(products));
    });
  }
}
