import 'package:bloc/bloc.dart';
import 'package:cloudrevels_practical_test_milan/domain/details_screen/details_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloudrevels_practical_test_milan/domain/core/server_failure.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/details_screen/detail_repo.dart';

part 'detail_data_event.dart';

part 'detail_data_state.dart';

part 'detail_data_bloc.freezed.dart';

class DetailDataBloc extends Bloc<DetailDataEvent, DetailDataState> {
  final DetailRepo _detailRepo;
  DetailDataBloc(this._detailRepo)
      : super(const DetailDataState.initial(
          isError: false,
          isLoading: true,
          detailData: null,
        )) {
    on<DetailDataEvent>((event, emit) async {
      await event.map(started: (event) async {
        Either<ServerFailure, DetailResponse> getData;
        getData = await _detailRepo.getDetailData(id: event.id);
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
              detailData: r,
            ),
          ),
        );
      }, emitInitial: (event) async {
        emit(const DetailDataState.initial(
          isError: false,
          isLoading: true,
          detailData: null,
        ));
      },);
    });
  }
}
