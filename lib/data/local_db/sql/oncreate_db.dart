import 'dart:developer';

import 'package:myairdeal/data/local_db/sqflite_local_service.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/aa.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/da.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/fd_price.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/pay_type.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/total_price_list.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/trip_infos.dart';
import 'package:sqflite/sqflite.dart' as sql;

class Sql {
  static const tripInfoTable = 'trip_infos';
  static const searchAirlineResultTable = 'search_result';
  static const segmentInformationTable = 'segment_infos';
  static const totalPriceListTable = 'total_price_list';
  static const fdPriceTable = 'fd_price';
  static const payTypeTable = 'pay_type';
  static const arrivalAirportTable = 'arrival_airport';
  static const departureAirportTable = 'departure_airport';

  /// create the tables for the first time when user come to the application
  static Future onCreate(sql.Database db) async {
    try {
      log('-----------------oncreate database---------------------');
      await db.execute(_tripInfoTableCreation);
      await db.execute(_searchAirlineResultCreation);
      await db.execute(_segmentInformationTableCreation);
      await db.execute(_totalPriceListTableCreation);
      // await db.execute(_arrivalAirportTableCreation);
      // await db.execute(_departureAirportTableCreation);
    } catch (e) {
      log('onCreate error ==> ${e.toString()}');
    }
  }

  /// table for [TripInfos]
  static const String _tripInfoTableCreation = '''
      CREATE TABLE IF NOT EXISTS $tripInfoTable (
        ${TripInfos.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${TripInfos.colCombo} TEXT ,
        ${TripInfos.colMulticity1} TEXT ,
        ${TripInfos.colMulticity2} TEXT ,
        ${TripInfos.colMulticity3} TEXT ,
        ${TripInfos.colMulticity4} TEXT ,
        ${TripInfos.colMulticity5} TEXT ,
        ${TripInfos.colMulticity6} TEXT ,
        ${TripInfos.colOnward} TEXT ,
        ${TripInfos.colReturns} TEXT
      )
    ''';

  /// table for [SearchAirlineInformation] relation with [TripInfos]
  static const String _searchAirlineResultCreation = '''
      CREATE TABLE IF NOT EXISTS $searchAirlineResultTable (
        ${SearchAirlineInformation.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${SearchAirlineInformation.coltripInfoType} TEXT ,
        ${SearchAirlineInformation.coltripInfoId} TEXT ,
        FOREIGN KEY (${SearchAirlineInformation.coltripInfoId}) REFERENCES $tripInfoTable(${TripInfos.colLocalId})
      )
    ''';

  /// table for [SI] relation with [SearchAirlineInformation]
  static const String _segmentInformationTableCreation = '''
      CREATE TABLE IF NOT EXISTS $segmentInformationTable (
        ${SI.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT ,
        ${SI.colId} TEXT ,
        ${SI.colStops} INTEGER ,
        ${SI.colSN} INTEGER ,
        ${SI.colDt} TEXT ,
        ${SI.colAt} TEXT ,
        ${SI.colDuration} INTEGER ,
        ${SI.colSearchAirlineId} INTEGER ,
        FOREIGN KEY (${SI.colSearchAirlineId}) REFERENCES $tripInfoTable(${SearchAirlineInformation.colLocalId})
      )
    ''';

  /// table for [TotalPriceList] relation with [SearchAirlineInformation]
  static const String _totalPriceListTableCreation = '''
      CREATE TABLE IF NOT EXISTS $totalPriceListTable (
        ${TotalPriceList.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT ,
        ${TotalPriceList.colId} TEXT ,
        ${TotalPriceList.colFareIdentifier} TEXT ,
        ${TotalPriceList.colSri} TEXT ,
        ${TotalPriceList.colIcca} TEXT ,
        ${TotalPriceList.colMsri} TEXT ,
        ${TotalPriceList.colSearchAirlineId} INTEGER ,
        FOREIGN KEY (${TotalPriceList.colSearchAirlineId}) REFERENCES $segmentInformationTable(${SearchAirlineInformation.colLocalId})
      )
    ''';

  /// table for [FdPrice] relation with [TotalPriceList]
  static const String _fdPriceTableCreation = '''
      CREATE TABLE IF NOT EXISTS $fdPriceTable (
        ${FdPrice.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT ,
        ${FdPrice.colPassengerType} TEXT ,
        ${FdPrice.colTotalPriceListId} TEXT ,
        FOREIGN KEY (${FdPrice.colTotalPriceListId}) REFERENCES $totalPriceListTable(${TotalPriceList.colLocalId})
      )
    ''';

  /// table for [PayType] relation with [FdPrice]
  static const String _payTypeTableCreation = '''
      CREATE TABLE IF NOT EXISTS $payTypeTable (
        ${PayType.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT ,
        ${PayType.colRT} TEXT ,
        ${PayType.colSR} TEXT ,
        ${PayType.colCC} TEXT ,
        ${PayType.colCB} TEXT ,
        ${PayType.colFB} TEXT ,
        ${PayType.colMI} INTEGER ,
        FOREIGN KEY (${PayType.colFdPriceId}) REFERENCES $fdPriceTable(${FdPrice.colLocalId})
      )
    ''';

  /// table for [Aa] relation with [SI]
  static const String _arrivalAirportTableCreation = '''
      CREATE TABLE IF NOT EXISTS $arrivalAirportTable (
        ${Aa.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT ,
        ${Aa.colCode} TEXT ,
        ${Aa.colName} TEXT ,
        ${Aa.colCityCode} TEXT ,
        ${Aa.colCountry} TEXT ,
        ${Aa.colTerminal} TEXT ,
        ${Aa.colCity} TEXT ,
        ${Aa.colCountryCode} TEXT ,
        ${Aa.colSiId} INTEGER ,
        FOREIGN KEY (${Aa.colSiId}) REFERENCES $segmentInformationTable(${SI.colLocalId})
      )
    ''';

  /// table for [Da] relation with [SI]
  static const String _departureAirportTableCreation = '''
      CREATE TABLE IF NOT EXISTS $departureAirportTable (
        ${Da.colLocalId} INTEGER PRIMARY KEY AUTOINCREMENT ,
        ${Da.colCode} TEXT ,
        ${Da.colName} TEXT ,
        ${Da.colCityCode} TEXT ,
        ${Da.colCountry} TEXT ,
        ${Da.colTerminal} TEXT ,
        ${Da.colCity} TEXT ,
        ${Da.colCountryCode} TEXT ,
        ${Da.colSiId} INTEGER ,
        FOREIGN KEY (${Da.colSiId}) REFERENCES $segmentInformationTable(${SI.colLocalId})
      )
    ''';
}
