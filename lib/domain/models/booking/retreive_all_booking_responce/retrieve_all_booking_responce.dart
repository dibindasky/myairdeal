class RetrieveAllBookingResponce {
  String? sId;
  String? bookingId;
  String? userId;
  String? createdAt;
  String? updatedAt;
  Data? data;

  RetrieveAllBookingResponce({
    this.sId,
    this.bookingId,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.data,
  });

  RetrieveAllBookingResponce.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    bookingId = json['bookingId'];
    userId = json['userId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['bookingId'] = bookingId;
    data['userId'] = userId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Order? order;
  ItemInfos? itemInfos;
  GstInfo? gstInfo;
  Status? status;

  Data({this.order, this.itemInfos, this.gstInfo, this.status});

  Data.fromJson(Map<String, dynamic> json) {
    order = json['order'] != null ? Order.fromJson(json['order']) : null;
    itemInfos = json['itemInfos'] != null
        ? ItemInfos.fromJson(json['itemInfos'])
        : null;
    gstInfo =
        json['gstInfo'] != null ? GstInfo.fromJson(json['gstInfo']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (order != null) {
      data['order'] = order!.toJson();
    }
    if (itemInfos != null) {
      data['itemInfos'] = itemInfos!.toJson();
    }
    if (gstInfo != null) {
      data['gstInfo'] = gstInfo!.toJson();
    }
    if (status != null) {
      data['status'] = status!.toJson();
    }
    return data;
  }
}

class Order {
  String? bookingId;
  double? amount;
  int? markup;
  DeliveryInfo? deliveryInfo;
  String? status;
  String? createdOn;

  Order(
      {this.bookingId,
      this.amount,
      this.markup,
      this.deliveryInfo,
      this.status,
      this.createdOn});

  Order.fromJson(Map<String, dynamic> json) {
    bookingId = json['bookingId'];
    amount = json['amount'];
    markup = json['markup'];
    deliveryInfo = json['deliveryInfo'] != null
        ? DeliveryInfo.fromJson(json['deliveryInfo'])
        : null;
    status = json['status'];
    createdOn = json['createdOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookingId'] = bookingId;
    data['amount'] = amount;
    data['markup'] = markup;
    if (deliveryInfo != null) {
      data['deliveryInfo'] = deliveryInfo!.toJson();
    }
    data['status'] = status;
    data['createdOn'] = createdOn;
    return data;
  }
}

class DeliveryInfo {
  String? emails;
  String? contacts;

  DeliveryInfo({this.emails, this.contacts});

  DeliveryInfo.fromJson(Map<String, dynamic> json) {
    emails = json['emails'];
    contacts = json['contacts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['emails'] = emails;
    data['contacts'] = contacts;
    return data;
  }
}

class ItemInfos {
  AIR? aIR;

  ItemInfos({this.aIR});

  ItemInfos.fromJson(Map<String, dynamic> json) {
    aIR = json['AIR'] != null ? AIR.fromJson(json['AIR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (aIR != null) {
      data['AIR'] = aIR!.toJson();
    }
    return data;
  }
}

class AIR {
  TripInfos? tripInfos;
  TravellerInfos? travellerInfos;
  TotalPriceInfo? totalPriceInfo;
  String? timeLimit;

  AIR(
      {this.tripInfos,
      this.travellerInfos,
      this.totalPriceInfo,
      this.timeLimit});

  AIR.fromJson(Map<String, dynamic> json) {
    tripInfos = json['tripInfos'] != null
        ? TripInfos.fromJson(json['tripInfos'])
        : null;
    travellerInfos = json['travellerInfos'] != null
        ? TravellerInfos.fromJson(json['travellerInfos'])
        : null;
    totalPriceInfo = json['totalPriceInfo'] != null
        ? TotalPriceInfo.fromJson(json['totalPriceInfo'])
        : null;
    timeLimit = json['timeLimit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tripInfos != null) {
      data['tripInfos'] = tripInfos!.toJson();
    }
    if (travellerInfos != null) {
      data['travellerInfos'] = travellerInfos!.toJson();
    }
    if (totalPriceInfo != null) {
      data['totalPriceInfo'] = totalPriceInfo!.toJson();
    }
    data['timeLimit'] = timeLimit;
    return data;
  }
}

class TripInfos {
  SI? sI;

  TripInfos({this.sI});

  TripInfos.fromJson(Map<String, dynamic> json) {
    sI = json['sI'] != null ? SI.fromJson(json['sI']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sI != null) {
      data['sI'] = sI!.toJson();
    }
    return data;
  }
}

class SI {
  String? id;
  FD? fD;
  int? stops;
  int? duration;
  Da? da;
  Da? aa;
  String? dt;
  String? at;
  bool? iand;
  bool? isRs;
  int? sN;
  bool? israa;

  SI(
      {this.id,
      this.fD,
      this.stops,
      this.duration,
      this.da,
      this.aa,
      this.dt,
      this.at,
      this.iand,
      this.isRs,
      this.sN,
      this.israa});

  SI.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fD = json['fD'] != null ? FD.fromJson(json['fD']) : null;
    stops = json['stops'];
    duration = json['duration'];
    da = json['da'] != null ? Da.fromJson(json['da']) : null;
    aa = json['aa'] != null ? Da.fromJson(json['aa']) : null;
    dt = json['dt'];
    at = json['at'];
    iand = json['iand'];
    isRs = json['isRs'];
    sN = json['sN'];
    israa = json['israa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (fD != null) {
      data['fD'] = fD!.toJson();
    }
    data['stops'] = stops;
    data['duration'] = duration;
    if (da != null) {
      data['da'] = da!.toJson();
    }
    if (aa != null) {
      data['aa'] = aa!.toJson();
    }
    data['dt'] = dt;
    data['at'] = at;
    data['iand'] = iand;
    data['isRs'] = isRs;
    data['sN'] = sN;
    data['israa'] = israa;
    return data;
  }
}

class FD {
  AI? aI;
  String? fN;
  String? eT;

  FD({this.aI, this.fN, this.eT});

  FD.fromJson(Map<String, dynamic> json) {
    aI = json['aI'] != null ? AI.fromJson(json['aI']) : null;
    fN = json['fN'];
    eT = json['eT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (aI != null) {
      data['aI'] = aI!.toJson();
    }
    data['fN'] = fN;
    data['eT'] = eT;
    return data;
  }
}

class AI {
  String? code;
  String? name;
  bool? isLcc;

  AI({this.code, this.name, this.isLcc});

  AI.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    isLcc = json['isLcc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['isLcc'] = isLcc;
    return data;
  }
}

class Da {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;
  String? terminal;

  Da(
      {this.code,
      this.name,
      this.cityCode,
      this.city,
      this.country,
      this.countryCode,
      this.terminal});

  Da.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    cityCode = json['cityCode'];
    city = json['city'];
    country = json['country'];
    countryCode = json['countryCode'];
    terminal = json['terminal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['cityCode'] = cityCode;
    data['city'] = city;
    data['country'] = country;
    data['countryCode'] = countryCode;
    data['terminal'] = terminal;
    return data;
  }
}

class TravellerInfos {
  PnrDetails? pnrDetails;
  CheckinStatusMap? checkinStatusMap;
  String? ti;
  String? pt;
  String? fN;
  String? lN;

  TravellerInfos(
      {this.pnrDetails,
      this.checkinStatusMap,
      this.ti,
      this.pt,
      this.fN,
      this.lN});

  TravellerInfos.fromJson(Map<String, dynamic> json) {
    pnrDetails = json['pnrDetails'] != null
        ? PnrDetails.fromJson(json['pnrDetails'])
        : null;
    checkinStatusMap = json['checkinStatusMap'] != null
        ? CheckinStatusMap.fromJson(json['checkinStatusMap'])
        : null;
    ti = json['ti'];
    pt = json['pt'];
    fN = json['fN'];
    lN = json['lN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pnrDetails != null) {
      data['pnrDetails'] = pnrDetails!.toJson();
    }
    if (checkinStatusMap != null) {
      data['checkinStatusMap'] = checkinStatusMap!.toJson();
    }
    data['ti'] = ti;
    data['pt'] = pt;
    data['fN'] = fN;
    data['lN'] = lN;
    return data;
  }
}

class PnrDetails {
  String? dELBLR;

  PnrDetails({this.dELBLR});

  PnrDetails.fromJson(Map<String, dynamic> json) {
    dELBLR = json['DEL-BLR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DEL-BLR'] = dELBLR;
    return data;
  }
}

class CheckinStatusMap {
  bool? dELBLR;

  CheckinStatusMap({this.dELBLR});

  CheckinStatusMap.fromJson(Map<String, dynamic> json) {
    dELBLR = json['DEL-BLR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DEL-BLR'] = dELBLR;
    return data;
  }
}

class TotalPriceInfo {
  TotalFareDetail? totalFareDetail;

  TotalPriceInfo({this.totalFareDetail});

  TotalPriceInfo.fromJson(Map<String, dynamic> json) {
    totalFareDetail = json['totalFareDetail'] != null
        ? TotalFareDetail.fromJson(json['totalFareDetail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (totalFareDetail != null) {
      data['totalFareDetail'] = totalFareDetail!.toJson();
    }
    return data;
  }
}

class TotalFareDetail {
  FC? fC;
  AfC? afC;

  TotalFareDetail({this.fC, this.afC});

  TotalFareDetail.fromJson(Map<String, dynamic> json) {
    fC = json['fC'] != null ? FC.fromJson(json['fC']) : null;
    afC = json['afC'] != null ? AfC.fromJson(json['afC']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fC != null) {
      data['fC'] = fC!.toJson();
    }
    if (afC != null) {
      data['afC'] = afC!.toJson();
    }
    return data;
  }
}

class FC {
  double? iGST;
  int? bF;
  double? nF;
  double? tF;
  double? tAF;

  FC({this.iGST, this.bF, this.nF, this.tF, this.tAF});

  FC.fromJson(Map<String, dynamic> json) {
    iGST = json['IGST'];
    bF = json['BF'];
    nF = json['NF'];
    tF = json['TF'];
    tAF = json['TAF'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['IGST'] = iGST;
    data['BF'] = bF;
    data['NF'] = nF;
    data['TF'] = tF;
    data['TAF'] = tAF;
    return data;
  }
}

class AfC {
  TAF? tAF;

  AfC({this.tAF});

  AfC.fromJson(Map<String, dynamic> json) {
    tAF = json['TAF'] != null ? TAF.fromJson(json['TAF']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tAF != null) {
      data['TAF'] = tAF!.toJson();
    }
    return data;
  }
}

class TAF {
  double? mFT;
  int? yQ;
  int? oT;
  int? aGST;
  int? mF;
  int? mU;

  TAF({this.mFT, this.yQ, this.oT, this.aGST, this.mF, this.mU});

  TAF.fromJson(Map<String, dynamic> json) {
    mFT = json['MFT'];
    yQ = json['YQ'];
    oT = json['OT'];
    aGST = json['AGST'];
    mF = json['MF'];
    mU = json['MU'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MFT'] = mFT;
    data['YQ'] = yQ;
    data['OT'] = oT;
    data['AGST'] = aGST;
    data['MF'] = mF;
    data['MU'] = mU;
    return data;
  }
}

class GstInfo {
  String? gstNumber;
  String? email;
  String? mobile;
  String? address;
  String? registeredName;
  String? bookingId;
  String? bookingUserId;
  int? id;

  GstInfo(
      {this.gstNumber,
      this.email,
      this.mobile,
      this.address,
      this.registeredName,
      this.bookingId,
      this.bookingUserId,
      this.id});

  GstInfo.fromJson(Map<String, dynamic> json) {
    gstNumber = json['gstNumber'];
    email = json['email'];
    mobile = json['mobile'];
    address = json['address'];
    registeredName = json['registeredName'];
    bookingId = json['bookingId'];
    bookingUserId = json['bookingUserId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gstNumber'] = gstNumber;
    data['email'] = email;
    data['mobile'] = mobile;
    data['address'] = address;
    data['registeredName'] = registeredName;
    data['bookingId'] = bookingId;
    data['bookingUserId'] = bookingUserId;
    data['id'] = id;
    return data;
  }
}

class Status {
  bool? success;
  int? httpStatus;

  Status({this.success, this.httpStatus});

  Status.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    httpStatus = json['httpStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['httpStatus'] = httpStatus;
    return data;
  }
}
