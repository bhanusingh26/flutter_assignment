class InventryWebResponse {
  List<CustomerEstimateFlow>? customerEstimateFlow;

  InventryWebResponse({this.customerEstimateFlow});

  InventryWebResponse.fromJson(Map<String, dynamic> json) {
    if (json['Customer_Estimate_Flow'] != null) {
      customerEstimateFlow = <CustomerEstimateFlow>[];
      json['Customer_Estimate_Flow'].forEach((v) {
        customerEstimateFlow!.add(CustomerEstimateFlow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (customerEstimateFlow != null) {
      data['Customer_Estimate_Flow'] = customerEstimateFlow!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomerEstimateFlow {
  String? estimateId;
  String? userId;
  String? movingFrom;
  String? movingTo;
  String? movingOn;
  String? distance;
  String? propertySize;
  String? oldFloorNo;
  String? oldElevatorAvailability;
  String? oldParkingDistance;
  String? unpackingService;
  String? packingService;
  Items? items;
  String? oldHouseAdditionalInfo;
  String? totalItems;
  String? status;
  String? orderDate;
  String? dateCreated;
  String? dateOfComplete;
  String? dateOfCancel;
  String? estimateStatus;
  String? customStatus;
  String? estimateComparison;
  String? estimateAmount;
  dynamic successfulPayments;
  String? orderReviewed;
  String? callBack;
  String? moveDateFlexible;
  FromAddress? fromAddress;
  ToAddress? toAddress;
  String? serviceType;
  dynamic storageItems;

  CustomerEstimateFlow(
      {this.estimateId,
      this.userId,
      this.movingFrom,
      this.movingTo,
      this.movingOn,
      this.distance,
      this.propertySize,
      this.oldFloorNo,
      this.oldElevatorAvailability,
      this.oldParkingDistance,
      this.unpackingService,
      this.packingService,
      this.items,
      this.oldHouseAdditionalInfo,
      this.totalItems,
      this.status,
      this.orderDate,
      this.dateCreated,
      this.dateOfComplete,
      this.dateOfCancel,
      this.estimateStatus,
      this.customStatus,
      this.estimateComparison,
      this.estimateAmount,
      this.successfulPayments,
      this.orderReviewed,
      this.callBack,
      this.moveDateFlexible,
      this.fromAddress,
      this.toAddress,
      this.serviceType,
      this.storageItems});

  CustomerEstimateFlow.fromJson(Map<String, dynamic> json) {
    estimateId = json['estimate_id'];
    userId = json['user_id'];
    movingFrom = json['moving_from'];
    movingTo = json['moving_to'];
    movingOn = json['moving_on'];
    distance = json['distance'];
    propertySize = json['property_size'];
    oldFloorNo = json['old_floor_no'];
    oldElevatorAvailability = json['old_elevator_availability'];
    oldParkingDistance = json['old_parking_distance'];
    unpackingService = json['unpacking_service'];
    packingService = json['packing_service'];
    items = json['items'] != null ? Items.fromJson(json['items']) : null;
    oldHouseAdditionalInfo = json['old_house_additional_info'];
    totalItems = json['total_items'];
    status = json['status'];
    orderDate = json['order_date'];
    dateCreated = json['date_created'];
    dateOfComplete = json['date_of_complete'];
    dateOfCancel = json['date_of_cancel'];
    estimateStatus = json['estimate_status'];
    customStatus = json['custom_status'];
    estimateComparison = json['estimate_comparison'];
    estimateAmount = json['estimateAmount'];
    successfulPayments = json['successfulPayments'] ?? {};
    orderReviewed = json['order_reviewed'];
    callBack = json['call_back'];
    moveDateFlexible = json['move_date_flexible'];
    fromAddress = json['from_address'] != null ? FromAddress.fromJson(json['from_address']) : null;
    toAddress = json['to_address'] != null ? ToAddress.fromJson(json['to_address']) : null;
    serviceType = json['service_type'];
    storageItems = json['storage_items'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['estimate_id'] = estimateId;
    data['user_id'] = userId;
    data['moving_from'] = movingFrom;
    data['moving_to'] = movingTo;
    data['moving_on'] = movingOn;
    data['distance'] = distance;
    data['property_size'] = propertySize;
    data['old_floor_no'] = oldFloorNo;
    data['old_elevator_availability'] = oldElevatorAvailability;
    data['old_parking_distance'] = oldParkingDistance;
    data['unpacking_service'] = unpackingService;
    data['packing_service'] = packingService;
    if (items != null) {
      data['items'] = items!.toJson();
    }
    data['old_house_additional_info'] = oldHouseAdditionalInfo;
    data['total_items'] = totalItems;
    data['status'] = status;
    data['order_date'] = orderDate;
    data['date_created'] = dateCreated;
    data['date_of_complete'] = dateOfComplete;
    data['date_of_cancel'] = dateOfCancel;
    data['estimate_status'] = estimateStatus;
    data['custom_status'] = customStatus;
    data['estimate_comparison'] = estimateComparison;
    data['estimateAmount'] = estimateAmount;
    if (successfulPayments != null) {
      data['successfulPayments'] = successfulPayments!.map((v) => v.toJson()).toList();
    }
    data['order_reviewed'] = orderReviewed;
    data['call_back'] = callBack;
    data['move_date_flexible'] = moveDateFlexible;
    if (fromAddress != null) {
      data['from_address'] = fromAddress!.toJson();
    }
    if (toAddress != null) {
      data['to_address'] = toAddress!.toJson();
    }
    data['service_type'] = serviceType;
    data['storage_items'] = storageItems;
    return data;
  }
}

class Items {
  List<Inventory>? inventory;
  CustomItems? customItems;

  Items({this.inventory, this.customItems});

  Items.fromJson(Map<String, dynamic> json) {
    if (json['inventory'] != null) {
      inventory = <Inventory>[];
      json['inventory'].forEach((v) {
        inventory!.add(Inventory.fromJson(v));
      });
    }
    customItems = json['customItems'] != null ? CustomItems.fromJson(json['customItems']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (inventory != null) {
      data['inventory'] = inventory!.map((v) => v.toJson()).toList();
    }
    if (customItems != null) {
      data['customItems'] = customItems!.toJson();
    }
    return data;
  }
}

class Inventory {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<Category>? category;

  Inventory({this.id, this.order, this.name, this.displayName, this.category});

  Inventory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
    name = json['name'];
    displayName = json['displayName'];
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order'] = order;
    data['name'] = name;
    data['displayName'] = displayName;
    if (category != null) {
      data['category'] = category!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<InventoryCategoryItems>? items;

  Category({this.id, this.order, this.name, this.displayName, this.items});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order '];
    name = json['name'];
    displayName = json['displayName'];
    if (json['items'] != null) {
      items = <InventoryCategoryItems>[];
      json['items'].forEach((v) {
        items!.add(InventoryCategoryItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order '] = order;
    data['name'] = name;
    data['displayName'] = displayName;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InventoryCategoryItems {
  List<Size>? size;
  dynamic childItems;
  String? typeOptions;
  Meta? meta;
  int? uniquieId;
  String? name;
  String? displayName;
  int? order;
  String? nameOld;
  int? qty;
  List<Type>? type;
  String? id;

  InventoryCategoryItems(
      {this.size,
      this.childItems,
      this.typeOptions,
      this.meta,
      this.uniquieId,
      this.name,
      this.displayName,
      this.order,
      this.nameOld,
      this.qty,
      this.type,
      this.id});

  InventoryCategoryItems.fromJson(Map<String, dynamic> json) {
    if (json['size'] != null) {
      size = <Size>[];
      json['size'].forEach((v) {
        size!.add(Size.fromJson(v));
      });
    }
    childItems = json['childItems'] ?? {};
    typeOptions = json['typeOptions'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    uniquieId = json['uniquieId'];
    name = json['name'];
    displayName = json['displayName'];
    order = json['order'];
    nameOld = json['name_old'];
    qty = json['qty'];
    if (json['type'] != null) {
      type = <Type>[];
      json['type'].forEach((v) {
        type!.add(Type.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (size != null) {
      data['size'] = size!.map((v) => v.toJson()).toList();
    }
    if (childItems != null) {
      data['childItems'] = childItems!.map((v) => v.toJson()).toList();
    }
    data['typeOptions'] = typeOptions;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['uniquieId'] = uniquieId;
    data['name'] = name;
    data['displayName'] = displayName;
    data['order'] = order;
    data['name_old'] = nameOld;
    data['qty'] = qty;
    if (type != null) {
      data['type'] = type!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    return data;
  }
}

class Size {
  String? option;
  String? tooltip;
  bool? selected;

  Size({this.option, this.tooltip, this.selected});

  Size.fromJson(Map<String, dynamic> json) {
    option = json['option'];
    tooltip = json['tooltip'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['option'] = option;
    data['tooltip'] = tooltip;
    data['selected'] = selected;
    return data;
  }
}

class ChildItems {
  List<Size>? size;
  String? typeOptions;
  Meta? meta;
  int? uniquieId;
  String? name;
  String? displayName;
  int? order;
  String? nameOld;
  int? qty;
  List<Type>? type;
  String? id;

  ChildItems(
      {this.size,
      this.typeOptions,
      this.meta,
      this.uniquieId,
      this.name,
      this.displayName,
      this.order,
      this.nameOld,
      this.qty,
      this.type,
      this.id});

  ChildItems.fromJson(Map<String, dynamic> json) {
    if (json['size'] != null) {
      size = <Size>[];
      json['size'].forEach((v) {
        size!.add(Size.fromJson(v));
      });
    }
    typeOptions = json['typeOptions'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    uniquieId = json['uniquieId'];
    name = json['name'];
    displayName = json['displayName'];
    order = json['order'];
    nameOld = json['name_old'];
    qty = json['qty'];
    if (json['type'] != null) {
      type = <Type>[];
      json['type'].forEach((v) {
        type!.add(Type.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (size != null) {
      data['size'] = size!.map((v) => v.toJson()).toList();
    }
    data['typeOptions'] = typeOptions;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['uniquieId'] = uniquieId;
    data['name'] = name;
    data['displayName'] = displayName;
    data['order'] = order;
    data['name_old'] = nameOld;
    data['qty'] = qty;
    if (type != null) {
      data['type'] = type!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    return data;
  }
}

class Meta {
  bool? hasType;
  String? selectType;
  bool? hasVariation;
  bool? hasSize;

  Meta({this.hasType, this.selectType, this.hasVariation, this.hasSize});

  Meta.fromJson(Map<String, dynamic> json) {
    hasType = json['hasType'];
    selectType = json['selectType'];
    hasVariation = json['hasVariation'];
    hasSize = json['hasSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hasType'] = hasType;
    data['selectType'] = selectType;
    data['hasVariation'] = hasVariation;
    data['hasSize'] = hasSize;
    return data;
  }
}

class Type {
  String? id;
  String? option;
  bool? selected;

  Type({this.id, this.option, this.selected});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    option = json['option'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['option'] = option;
    data['selected'] = selected;
    return data;
  }
}

class CustomItems {
  String? units;
  List<CustomItemsItems>? items;

  CustomItems({this.units, this.items});

  CustomItems.fromJson(Map<String, dynamic> json) {
    units = json['units'];
    if (json['items'] != null) {
      items = <CustomItemsItems>[];
      json['items'].forEach((v) {
        items!.add(CustomItemsItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['units'] = units;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomItemsItems {
  String? id;
  String? itemHeight;
  String? itemLength;
  String? itemQty;
  String? itemWidth;
  String? itemDescription;
  String? itemName;

  CustomItemsItems(
      {this.id, this.itemHeight, this.itemLength, this.itemQty, this.itemWidth, this.itemDescription, this.itemName});

  CustomItemsItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemHeight = json['item_height'];
    itemLength = json['item_length'];
    itemQty = json['item_qty'];
    itemWidth = json['item_width'];
    itemDescription = json['item_description'];
    itemName = json['item_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['item_height'] = itemHeight;
    data['item_length'] = itemLength;
    data['item_qty'] = itemQty;
    data['item_width'] = itemWidth;
    data['item_description'] = itemDescription;
    data['item_name'] = itemName;
    return data;
  }
}

class FromAddress {
  String? firstName;
  String? lastName;
  String? fromAddress;
  String? fromLocality;
  String? fromCity;
  String? fromState;
  String? pincode;

  FromAddress(
      {this.firstName,
      this.lastName,
      this.fromAddress,
      this.fromLocality,
      this.fromCity,
      this.fromState,
      this.pincode});

  FromAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    fromAddress = json['fromAddress'];
    fromLocality = json['fromLocality'];
    fromCity = json['fromCity'];
    fromState = json['fromState'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['fromAddress'] = fromAddress;
    data['fromLocality'] = fromLocality;
    data['fromCity'] = fromCity;
    data['fromState'] = fromState;
    data['pincode'] = pincode;
    return data;
  }
}

class ToAddress {
  String? firstName;
  String? lastName;
  String? toAddress;
  String? toLocality;
  String? toCity;
  String? toState;
  String? pincode;

  ToAddress({this.firstName, this.lastName, this.toAddress, this.toLocality, this.toCity, this.toState, this.pincode});

  ToAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    toAddress = json['toAddress'];
    toLocality = json['toLocality'];
    toCity = json['toCity'];
    toState = json['toState'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['toAddress'] = toAddress;
    data['toLocality'] = toLocality;
    data['toCity'] = toCity;
    data['toState'] = toState;
    data['pincode'] = pincode;
    return data;
  }
}
