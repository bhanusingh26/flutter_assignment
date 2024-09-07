part of 'logistic_bloc.dart';

sealed class LogisticState extends Equatable {
  const LogisticState();

  @override
  List<Object> get props => [];
}

final class LogisticInitial extends LogisticState {}

class ShowHomePage extends LogisticState {
  final List<NewTabData> listNewTabData;
  final bool isLoading;
  final List<List<InventoryDetails>> inventoryDetailsList;

  const ShowHomePage({required this.listNewTabData, this.isLoading = false, required this.inventoryDetailsList});

  @override
  List<Object> get props => [listNewTabData, isLoading, inventoryDetailsList];
}
