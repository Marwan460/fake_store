import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fake_store/core/errors/failures.dart';
import 'package:fake_store/features/home/data/models/data_model/product_model.dart';
import 'package:fake_store/features/home/data/repos/home_repo.dart';
import 'package:http/http.dart' as http;

class HomeRepoImpl implements HomeRepo {
  final _baseUrl = "https://fakestoreapi.com/products";
  @override
  Future<Either<Failure, List<ProductModel>>> fetchData() async{
    try {
      http.Response response = await http.get(Uri.parse(_baseUrl));
      List<dynamic> data = jsonDecode(response.body);
      
      List<ProductModel> productsList = [];
      
      for(int i = 0; i < data.length; i++){
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return right(productsList);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}