import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/data_model/data_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<DataModel>>> fetchData();
}