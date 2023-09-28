part of 'detail_data_bloc.dart';

@freezed
class DetailDataEvent with _$DetailDataEvent {
  const factory DetailDataEvent.started({required int id}) = _Started;
  const factory DetailDataEvent.emitInitial() = _EmitInitial;

}
