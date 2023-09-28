import 'dart:developer';

import 'package:cloudrevels_practical_test_milan/domain/details_screen/detail_repo.dart';
import 'package:cloudrevels_practical_test_milan/domain/details_screen/details_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/core/server_failure.dart';
import '../../presentation/app/app_strings.dart';

class DetailRepoImpl implements DetailRepo{
  final Dio _dio = Dio();
  @override
  Future<Either<ServerFailure,DetailResponse>> getDetailData({required int id})async{
    try{
      final response = await _dio.get(AppStrings.detailUrl+id.toString());
      final DetailResponse model = DetailResponse.fromJson(response.data);
      if(response.statusCode == 200){
        log(model.message ?? "failed detail");
        return right(model);
      }else{
        return left(ServerFailure.networkError());
      }
    }catch(e){
      return left(ServerFailure.networkError());
    }
  }
  
}