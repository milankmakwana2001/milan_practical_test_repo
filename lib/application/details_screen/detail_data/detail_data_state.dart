part of 'detail_data_bloc.dart';

@freezed
class DetailDataState with _$DetailDataState {
  const factory DetailDataState.initial({required bool isLoading,
    required bool isError,
    required DetailResponse? detailData,}) = _Initial;
}
