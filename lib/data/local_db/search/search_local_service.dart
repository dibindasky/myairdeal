import 'dart:developer';

import 'package:myairdeal/data/local_db/sqflite_local_service.dart';
import 'package:myairdeal/data/local_db/sql/oncreate_db.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/total_price_list.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/trip_infos.dart';

class SearchLocalService {
  static final LocalService localService = LocalService();

  Future<void> debugSegmentInfo() async {
    // const query1 = 'SELECT * FROM ${Sql.tripInfoTable}';
    // final results1 = await localService.rawQuery(query1);
    // log('get flight data -- trip Info Debug: $results1');
    const query2 = 'SELECT * FROM ${Sql.searchAirlineResultTable}';
    final results2 = await localService.rawQuery(query2);
    log('get flight data -- search airline Debug: $results2');
    const query = 'SELECT * FROM ${Sql.segmentInformationTable}';
    final results = await localService.rawQuery(query);
    log('get flight data -- Segment Info Debug: $results');
  }

  Future<TripInfos?> retrieveTripInfos() async {
    try {
      const query = '''
      SELECT 
        ti.*,
        GROUP_CONCAT(DISTINCT sai.${SearchAirlineInformation.colLocalId} 
                     || '::' || sai.${SearchAirlineInformation.coltripInfoType}) 
            AS search_airline_info,
        GROUP_CONCAT(DISTINCT si.${SI.colLocalId} 
                     || '::' || si.${SI.colStops} 
                     || '::' || si.${SI.colDuration} 
                     || '::' || si.${SI.colDt} 
                     || '::' || si.${SI.colAt} 
                     || '::' || si.${SI.colSN} 
                     || '::' || si.${SI.colSearchAirlineId}) 
            AS segment_info,
        GROUP_CONCAT(DISTINCT tpl.${TotalPriceList.colLocalId}
                     || '::' || tpl.${TotalPriceList.colId}
                     || '::' || tpl.${TotalPriceList.colFareIdentifier}
                     || '::' || tpl.${TotalPriceList.colSri}
                     || '::' || tpl.${TotalPriceList.colIcca}
                     || '::' || tpl.${TotalPriceList.colMsri}
                     || '::' || tpl.${TotalPriceList.colSearchAirlineId})
            AS total_price_list
      FROM ${Sql.tripInfoTable} ti
      LEFT JOIN ${Sql.searchAirlineResultTable} sai 
          ON ti.${TripInfos.colLocalId} = sai.${SearchAirlineInformation.coltripInfoId}
      LEFT JOIN ${Sql.segmentInformationTable} si 
          ON sai.${SearchAirlineInformation.colLocalId} = si.${SI.colSearchAirlineId}
      LEFT JOIN ${Sql.totalPriceListTable} tpl
          ON sai.${SearchAirlineInformation.colLocalId} = tpl.${TotalPriceList.colSearchAirlineId}
      GROUP BY ti.${TripInfos.colLocalId}
    ''';

      log('retrieveTripInfos -> start execute query');
      final results = await localService.rawQuery(query);
      log('retrieveTripInfos -> done execute query - ${results.length}');

      if (results.isEmpty) return null;

      final tripData = results.last;
      log('retrieveTripInfos -> tripData --> $tripData');

      final searchAirlineInfos =
          _parseSearchAirlineInfo(tripData['search_airline_info'] as String?);
      log('retrieveTripInfos -> searchAirlineInfos --> $searchAirlineInfos');

      final segmentInfos =
          _parseSegmentInfo(tripData['segment_info'] as String?);
      log('retrieveTripInfos -> segmentInfos --> ${segmentInfos.length}');

      final totalPriceLists =
          _parseTotalPriceList(tripData['total_price_list'] as String?);
      log('retrieveTripInfos -> totalPriceLists --> ${totalPriceLists.length}');

      return TripInfos(
        combo: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colCombo),
        onward: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colOnward),
        returns: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colReturns),
        multicity1: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colMulticity1),
        multicity2: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colMulticity2),
        multicity3: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colMulticity3),
        multicity4: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colMulticity4),
        multicity5: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colMulticity5),
        multicity6: _filterByTripType(searchAirlineInfos, segmentInfos,
            totalPriceLists, TripInfos.colMulticity6),
      );
    } catch (e, stackTrace) {
      log('error retrieveTripInfos -> $e');
      log('stackTrace retrieveTripInfos-> $stackTrace');
      return null;
    }
  }

  List<SearchAirlineInformation> _filterByTripType(
      List<Map<String, dynamic>> searchAirlineInfos,
      List<SI> segmentInfos,
      List<TotalPriceList> totalPriceLists,
      String tripType) {
    final data = searchAirlineInfos
        .where((info) => info['trip_type'] == tripType)
        .map((info) {
          print('total price list data ==> ${totalPriceLists
                  .where((tpl) => tpl.searchAirlineId == info['id'])
                  .toList()}');
          return SearchAirlineInformation(
              tripType: info['trip_type'],
              sI: segmentInfos
                  .where((si) => si.searchAirlineId == info['id'])
                  .toList(),
              totalPriceList: totalPriceLists
                  .where((tpl) => tpl.searchAirlineId == info['id'])
                  .toList(),
            );
        })
        .toList();
    print('_filterByTripType => ${data.length}');
    return data;
  }

  List<TotalPriceList> _parseTotalPriceList(String? info) {
    if (info == null || info.isEmpty) return [];
    return info.split(',').map((item) {
      final parts = item.split('::');
      return TotalPriceList(
        id: parts[1] as String?,
        fareIdentifier: parts[2] as String?,
        sri: parts[3] as String?,
        icca: parts[4] == 'true'
            ? true
            : parts[4] == 'false'
                ? false
                : null,
        msri: parts[5] as List<String>?,
        searchAirlineId: parts[6] as String?,
      );
    }).toList();
  }

  List<Map<String, dynamic>> _parseSearchAirlineInfo(String? info) {
    if (info == null || info.isEmpty) return [];
    return info.split(',').map((item) {
      final parts = item.split('::');
      return {'id': int.parse(parts[0]), 'trip_type': parts[1]};
    }).toList();
  }

  List<SI> _parseSegmentInfo(String? info) {
    if (info == null || info.isEmpty) return [];
    return info.split(',').map((item) {
      final parts = item.split('::');
      return SI(
        id: parts[0],
        stops: int.tryParse(parts[1]) ?? 0,
        duration: int.tryParse(parts[2]) ?? 0,
        dt: parts[3],
        at: parts[4],
        sN: int.tryParse(parts[5]) ?? 0,
        searchAirlineId: int.tryParse(parts[6]) ?? 0,
      );
    }).toList();
  }

  /// Insert [TripInfos] all data into different tables for easy access
  Future<bool> insertSearchDataToDb({required TripInfos tripInfos}) async {
    try {
      // await debugSegmentInfo();
      await deleteAllData();
      // await debugSegmentInfo();
      final tripid = await _insertTripInfos(tripInfo: tripInfos);
      if (tripid == null) return false;

      final tripData = {
        TripInfos.colCombo: tripInfos.combo,
        TripInfos.colOnward: tripInfos.onward,
        TripInfos.colReturns: tripInfos.returns,
        TripInfos.colMulticity1: tripInfos.multicity1,
        TripInfos.colMulticity2: tripInfos.multicity2,
        TripInfos.colMulticity3: tripInfos.multicity3,
        TripInfos.colMulticity4: tripInfos.multicity4,
        TripInfos.colMulticity5: tripInfos.multicity5,
        TripInfos.colMulticity6: tripInfos.multicity6,
      };

      for (var entry in tripData.entries) {
        if (entry.value != null) {
          print('retrieveTripInfos SearchAirlineInfo => ${entry.key}');
          _insertSearchAirlineInfoDataHelper(
            airlineInfos: entry.value!,
            tripId: tripid,
            type: entry.key,
          );
        }
      }

      return true;
    } catch (e) {
      log('error insertSearchDataToDb -> $e');
      return false;
    }
  }

  /// insert [SearchAirlineInformation] helper method
  Future<void> _insertSearchAirlineInfoDataHelper(
      {required List<SearchAirlineInformation> airlineInfos,
      required String type,
      required int tripId}) async {
    try {
      for (var x in airlineInfos) {
        final searchAirlineId = await _insertSearchAirlineInfo(
          tripId: tripId,
          type: type,
        );
        if (searchAirlineId == null) return;

        /// add [SI] to db
        for (var si in x.sI ?? <SI>[]) {
          await _insertSegmentInfo(searchInfoId: searchAirlineId, si: si);
        }

        /// add [TotalPriceList] to db
        for (var totalPriceLitstItem
            in x.totalPriceList ?? <TotalPriceList>[]) {
          await _insertTotalPriceListItem(
              searchInfoId: searchAirlineId,
              totalPriceList: totalPriceLitstItem);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  /// insert [TripInfos] to table and  return id
  Future<int?> _insertTripInfos({required TripInfos tripInfo}) async {
    try {
      const tripInfoQuery = '''INSERT INTO ${Sql.tripInfoTable} (
                  ${TripInfos.colCombo},
                  ${TripInfos.colReturns},
                  ${TripInfos.colOnward},
                  ${TripInfos.colMulticity1},
                  ${TripInfos.colMulticity2},
                  ${TripInfos.colMulticity3},
                  ${TripInfos.colMulticity4},
                  ${TripInfos.colMulticity5},
                  ${TripInfos.colMulticity6})
          VALUES (?,?,?,?,?,?,?,?,?)
          ''';
      return await localService.rawInsert(
          tripInfoQuery,
          [
            tripInfo.combo != null ? '1' : '0',
            tripInfo.returns != null ? '1' : '0',
            tripInfo.onward != null ? '1' : '0',
            tripInfo.multicity1 != null ? '1' : '0',
            tripInfo.multicity2 != null ? '1' : '0',
            tripInfo.multicity3 != null ? '1' : '0',
            tripInfo.multicity4 != null ? '1' : '0',
            tripInfo.multicity5 != null ? '1' : '0',
            tripInfo.multicity6 != null ? '1' : '0',
          ],
          'retrieveTripInfos Trip Info');
    } catch (e) {
      log('error _insertTripInfos -> $e');
      return null;
    }
  }

  /// insert [SearchAirlineInformation] and retrn id
  Future<int?> _insertSearchAirlineInfo(
      {required int tripId, required String type}) async {
    try {
      const searchAirlineQuery =
          '''INSERT INTO ${Sql.searchAirlineResultTable} (
                  ${SearchAirlineInformation.coltripInfoType},
                  ${SearchAirlineInformation.coltripInfoId})
          VALUES (?,?) 
        ''';
      return await localService.rawInsert(searchAirlineQuery, [type, tripId],
          'retrieveTripInfos SearchAirlineInfo');
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return null;
    }
  }

  /// insert [SI] and retrn id
  Future<int?> _insertSegmentInfo(
      {required int searchInfoId, required SI si}) async {
    try {
      // TODO: add [da],[aa] and [fD]
      const searchAirlineQuery = '''INSERT INTO ${Sql.segmentInformationTable} (
                  ${SI.colId},
                  ${SI.colStops},
                  ${SI.colDuration},
                  ${SI.colDt},
                  ${SI.colAt},
                  ${SI.colSN},
                  ${SI.colSearchAirlineId})
          VALUES (?,?,?,?,?,?,?) 
        ''';
      return await localService.rawInsert(
          searchAirlineQuery,
          [
            si.id ?? '0',
            si.stops ?? 1,
            si.duration ?? 0,
            si.dt ?? '',
            si.at ?? '',
            si.sN ?? 0,
            searchInfoId,
          ],
          'retrieveTripInfos SI');
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return null;
    }
  }

  /// insert [TotalPriceList] and retrn id
  Future<int?> _insertTotalPriceListItem(
      {required int searchInfoId,
      required TotalPriceList totalPriceList}) async {
    try {
      const totalPriceListQuery = '''INSERT INTO ${Sql.totalPriceListTable} (
              ${TotalPriceList.colId} ,
              ${TotalPriceList.colFareIdentifier} ,
              ${TotalPriceList.colSri} ,
              ${TotalPriceList.colIcca} ,
              ${TotalPriceList.colMsri} ,
              ${TotalPriceList.colSearchAirlineId})
          VALUES (?,?,?,?,?,?) 
        ''';
      return await localService.rawInsert(
          totalPriceListQuery,
          [
            totalPriceList.id ?? '0',
            totalPriceList.fareIdentifier ?? '',
            totalPriceList.sri ?? '',
            totalPriceList.icca?.toString() ?? '',
            totalPriceList.msri ?? '',
            searchInfoId,
          ],
          'retrieveTripInfos SI');
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return null;
    }
  }

  Future<void> deleteAllData() async {
    try {
      await localService.delete(Sql.arrivalAirportTable);
      await localService.delete(Sql.departureAirportTable);
      await localService.delete(Sql.searchAirlineResultTable);
      await localService.delete(Sql.tripInfoTable);
      await localService.delete(Sql.segmentInformationTable);
    } catch (e) {
      log('error delete tables -> $e');
    }
  }
}
