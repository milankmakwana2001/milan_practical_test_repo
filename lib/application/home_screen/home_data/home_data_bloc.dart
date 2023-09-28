import 'package:bloc/bloc.dart';
import 'package:cloudrevels_practical_test_milan/domain/core/server_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/home_screen/home_repo.dart';
import '../../../domain/home_screen/home_response.dart';

part 'home_data_event.dart';

part 'home_data_state.dart';

part 'home_data_bloc.freezed.dart';

class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  final HomeRepo _homeRepo;

  HomeDataBloc(this._homeRepo)
      : super(const HomeDataState.initial(
          isError: false,
          isLoading: true,
          homeData: null,
        )) {
    on<HomeDataEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          Either<ServerFailure, HomeResponse> getData;
          getData = await _homeRepo.getHomeData();
          getData.fold(
            (l) => emit(
              state.copyWith(
                isLoading: false,
                isError: true,
              ),
            ),
            (r) => emit(
              state.copyWith(
                isLoading: false,
                isError: false,
                homeData: r,
              ),
            ),
          );
        },
      );
    });
  }
}
