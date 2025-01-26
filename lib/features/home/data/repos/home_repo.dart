import 'package:dartz/dartz.dart';
import 'package:fake_store/features/home/data/models/data_model/product_model.dart';
import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> fetchData();
}