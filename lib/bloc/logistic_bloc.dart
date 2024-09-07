import 'package:bloc/bloc.dart';
import 'package:boxigo_assignment/model/customer_estimate_flow.dart';
import 'package:boxigo_assignment/model/inventory_details.dart';
import 'package:boxigo_assignment/model/new_tab_data.dart';
import 'package:boxigo_assignment/repository/logistic_repository.dart';
import 'package:equatable/equatable.dart';

part 'logistic_event.dart';
part 'logistic_state.dart';

class LogisticBloc extends Bloc<LogisticEvent, LogisticState> {
  LogisticRepository logisticRepository;
  LogisticBloc({required this.logisticRepository}) : super(LogisticInitial()) {
    on<GetInventryResponse>((event, emit) async {
      emit(const ShowHomePage(isLoading: true, listNewTabData: [], inventoryDetailsList: []));
      await logisticRepository.fetchInventryResponse();
      List<NewTabData> newTabDataList = [];
      List<List<InventoryDetails>> inventoryDetailsList = [];
      logisticRepository.getInventryResponse.customerEstimateFlow?.forEach((item) {
        CustomerEstimateFlow currentCustomerEstimateFlow = item;
        newTabDataList.add(NewTabData(
            movingOn: item.movingOn.toString(),
            estimateId: item.estimateId.toString(),
            from: item.movingFrom.toString(),
            to: item.movingTo.toString(),
            propertySize: item.propertySize.toString(),
            items: item.items?.inventory?.length ?? 0,
            boxes: item.items?.customItems?.items?.length ?? 0,
            distance: item.distance.toString()));

        /// To store item details here
        List<InventoryDetails> inventoryDetails = [];
        currentCustomerEstimateFlow.items?.inventory?.forEach((inventory) {
          String inventoryName = inventory.displayName ?? '';
          Map<String, int> details = {};
          inventory.category?.forEach((category) {
            details[category.displayName.toString()] = category.items?.length ?? 0;
          });
          inventoryDetails.add(InventoryDetails(categoryDetails: details, inventoryName: inventoryName));
        });
        inventoryDetailsList.add(inventoryDetails);
      });
      emit(ShowHomePage(listNewTabData: newTabDataList, inventoryDetailsList: inventoryDetailsList));
    });
  }
}
