part of 'home_data_bloc.dart';

@freezed
class HomeDataEvent with _$HomeDataEvent {
  const factory HomeDataEvent.started() = _Started;
}
