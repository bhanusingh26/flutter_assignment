part of 'logistic_bloc.dart';

sealed class LogisticEvent extends Equatable {
  const LogisticEvent();

  @override
  List<Object> get props => [];
}

class GetInventryResponse extends LogisticEvent {
  const GetInventryResponse();

  @override
  List<Object> get props => [];
}
