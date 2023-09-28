import 'dart:developer';

import 'package:cloudrevels_practical_test_milan/domain/core/server_failure.dart';
import 'package:cloudrevels_practical_test_milan/domain/home_screen/home_repo.dart';
import 'package:cloudrevels_practical_test_milan/domain/home_screen/home_response.dart';
import 'package:cloudrevels_practical_test_milan/presentation/app/app_strings.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  final Dio _dio = Dio();
  @override
  Future<Either<ServerFailure, HomeResponse>> getHomeData() async {
    try{
      final response = await _dio.get(AppStrings.homeUrl);
      final HomeResponse model = HomeResponse.fromJson(response.data);
      if(response.statusCode == 200){
        log(model.message ?? "failed");
        return right(model);
      }else{
        return left(ServerFailure.networkError());
      }
    }catch(e){
      return left(ServerFailure.networkError());
    }
  }

}