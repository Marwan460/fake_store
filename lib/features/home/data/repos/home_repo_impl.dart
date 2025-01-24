import 'package:dartz/dartz.dart';
import 'package:fake_store/core/errors/failures.dart';
import 'package:fake_store/features/home/data/models/data_model/data_model.dart';
import 'package:fake_store/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<DataModel>>> fetchData() {
    // TODO: implement fetchData
    throw UnimplementedError();
  }
}