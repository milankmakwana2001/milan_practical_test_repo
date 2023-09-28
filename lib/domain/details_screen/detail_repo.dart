import 'package:cloudrevels_practical_test_milan/domain/core/server_failure.dart';
import 'package:dartz/dartz.dart';

import 'details_response.dart';

abstract class DetailRepo{
  Future<Either<ServerFailure,DetailResponse>> getDetailData({required int id});
}