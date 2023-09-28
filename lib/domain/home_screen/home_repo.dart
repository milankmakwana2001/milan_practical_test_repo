import 'package:cloudrevels_practical_test_milan/domain/core/server_failure.dart';
import 'package:dartz/dartz.dart';

import 'home_response.dart';

abstract class HomeRepo{
  Future<Either<ServerFailure,HomeResponse>> getHomeData();
}