part of 'home_data_bloc.dart';

@freezed
class HomeDataState with _$HomeDataState {
  const factory HomeDataState.initial({
    required bool isLoading,
    required bool isError,
    required HomeResponse? homeData,
}) = _Initial;
}
