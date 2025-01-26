import 'dart:convert';
import 'package:fake_store/features/home/data/models/data_model/product_model.dart';
import 'package:http/http.dart' as http;


class ApiService {
  final _baseUrl = "https://fakestoreapi.com/products";

  Future<List<ProductModel>> getProduct() async{
    http.Response response = await http.get(Uri.parse(_baseUrl));
    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> productsList = [];

    for(int i = 0; i < data.length; i++){
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}