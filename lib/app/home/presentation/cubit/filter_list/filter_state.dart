part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.loading() = _Loading;
  const factory FilterState.error(String message) = _Error;
  const factory FilterState.success(List<OrderEntity> orders) = _Success;
}
