import 'dart:developer';

import 'package:myairdeal/data/local_db/sqflite_local_service.dart';
import 'package:myairdeal/data/local_db/sql/oncreate_db.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/aa.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/af_c.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/ai.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/bi.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/da.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/fc.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/fd.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/fd_price.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/pay_type.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/taf.dart';
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
                   || '::' || si.${SI.colId}
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
          AS total_price_list,
      GROUP_CONCAT(DISTINCT aa.${Aa.colLocalId}
                   || '::' || aa.${Aa.colCode}
                   || '::' || aa.${Aa.colName}
                   || '::' || aa.${Aa.colCityCode}
                   || '::' || aa.${Aa.colCountry}
                   || '::' || aa.${Aa.colTerminal}
                   || '::' || aa.${Aa.colCity}
                   || '::' || aa.${Aa.colCountryCode}
                   || '::' || aa.${Aa.colSiId})
          AS arrival_airport,
      GROUP_CONCAT(DISTINCT da.${Da.colLocalId}
                   || '::' || da.${Da.colCode}
                   || '::' || da.${Da.colName}
                   || '::' || da.${Da.colCityCode}
                   || '::' || da.${Da.colCountry}
                   || '::' || da.${Da.colTerminal}
                   || '::' || da.${Da.colCity}
                   || '::' || da.${Da.colCountryCode}
                   || '::' || da.${Da.colSiId})
          AS departure_airport,
      GROUP_CONCAT(DISTINCT fd.${FD.colLocalId}
                   || '::' || fd.${FD.colAICode}
                   || '::' || fd.${FD.colAIName}
                   || '::' || fd.${FD.colAIIsLcc}
                   || '::' || fd.${FD.colfN}
                   || '::' || fd.${FD.coleT}
                   || '::' || fd.${FD.colSiId})
          AS fd_segment_info,
      GROUP_CONCAT(DISTINCT pt.${PayType.colLocalId}
                   || '::' || pt.${PayType.colPassengerType}
                   || '::' || pt.${PayType.colSR}
                   || '::' || pt.${PayType.colCC}
                   || '::' || pt.${PayType.colCB}
                   || '::' || pt.${PayType.colFB}
                   || '::' || pt.${PayType.colMI}
                   || '::' || pt.${PayType.colRT}
                   || '::' || pt.${PayType.colFdPriceId})
          AS pay_type_info,
      GROUP_CONCAT(DISTINCT fc.${Fc.colLocalId}
                   || '::' || fc.${Fc.colBF}
                   || '::' || fc.${Fc.colTF}
                   || '::' || fc.${Fc.colTAF}
                   || '::' || fc.${Fc.colNF}
                   || '::' || fc.${Fc.colPayTypeId})
          AS fc_info,
      GROUP_CONCAT(DISTINCT bi.${Bi.colLocalId}
                   || '::' || bi.${Bi.colIB}
                   || '::' || bi.${Bi.colCB}
                   || '::' || bi.${Bi.colPayTypeId})
          AS bi_info,
      GROUP_CONCAT(DISTINCT taf.${Taf.colLocalId}
                   || '::' || taf.${Taf.colYQ}
                   || '::' || taf.${Taf.colMFT}
                   || '::' || taf.${Taf.colOT}
                   || '::' || taf.${Taf.colMF}
                   || '::' || taf.${Taf.colAGST}
                   || '::' || taf.${Taf.colYR}
                   || '::' || taf.${Taf.colPayTypeId})
          AS taf_info
    FROM ${Sql.tripInfoTable} ti
    LEFT JOIN ${Sql.searchAirlineResultTable} sai 
        ON ti.${TripInfos.colLocalId} = sai.${SearchAirlineInformation.coltripInfoId}
    LEFT JOIN ${Sql.segmentInformationTable} si 
        ON sai.${SearchAirlineInformation.colLocalId} = si.${SI.colSearchAirlineId}
    LEFT JOIN ${Sql.totalPriceListTable} tpl
        ON sai.${SearchAirlineInformation.colLocalId} = tpl.${TotalPriceList.colSearchAirlineId}
    LEFT JOIN ${Sql.arrivalAirportTable} aa
        ON si.${SI.colLocalId} = aa.${Aa.colSiId}
    LEFT JOIN ${Sql.departureAirportTable} da
        ON si.${SI.colLocalId} = da.${Da.colSiId}
    LEFT JOIN ${Sql.fdSegmentInfoTable} fd
        ON si.${SI.colLocalId} = fd.${FD.colSiId}
    LEFT JOIN ${Sql.payTypeTable} pt
        ON tpl.${TotalPriceList.colLocalId} = pt.${PayType.colFdPriceId}
    LEFT JOIN ${Sql.fCPaytypeTable} fc
        ON pt.${PayType.colLocalId} = fc.${Fc.colPayTypeId}
    LEFT JOIN ${Sql.biPayTypeTable} bi
        ON pt.${PayType.colLocalId} = bi.${Bi.colPayTypeId}
    LEFT JOIN ${Sql.tafPayTypeTable} taf
        ON pt.${PayType.colLocalId} = taf.${Taf.colPayTypeId}
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
      final segmentInfos = _parseSegmentInfo(
        tripData['segment_info'] as String?,
        tripData['arrival_airport'] as String?,
        tripData['departure_airport'] as String?,
        tripData['fd_segment_info'] as String?,
      );
      final totalPriceLists = _parseTotalPriceList(
        tripData['total_price_list'] as String?,
        tripData['pay_type_info'] as String?,
        tripData['fc_info'] as String?,
        tripData['bi_info'] as String?,
        tripData['taf_info'] as String?,
      );

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
        .where((info) =>
            info[SearchAirlineInformation.coltripInfoType] == tripType)
        .map((info) {
      return SearchAirlineInformation(
        tripType: info[SearchAirlineInformation.coltripInfoType],
        sI: segmentInfos
            .where((si) =>
                si.searchAirlineId == info[SearchAirlineInformation.colLocalId])
            .toList(),
        totalPriceList: totalPriceLists
            .where((tpl) =>
                tpl.searchAirlineId ==
                info[SearchAirlineInformation.colLocalId])
            .toList(),
      );
    }).toList();
    print('_filterByTripType => $tripType ${data.length}');
    return data;
  }

  List<TotalPriceList> _parseTotalPriceList(String? info, String? payTypeInfo,
      String? fcInfo, String? biInfo, String? tafInfo) {
    if (info == null || info.isEmpty) return [];

    final payTypeMap = _parsePayTypeInfo(payTypeInfo);
    final fcMap = _parseFcInfo(fcInfo);
    final biMap = _parseBiInfo(biInfo);
    final tafMap = _parseTafInfo(tafInfo);

    return info.split(',').map((item) {
      final parts = item.split('::');
      final tplId = parts[0];
      final payTypes = payTypeMap[tplId] ?? [];

      return TotalPriceList(
        id: parts[1],
        fareIdentifier: parts[2],
        sri: parts[3],
        icca: parts[4] == 'true',
        msri: parts[5].split(','),
        searchAirlineId: parts[6],
        fd: FdPrice(
          adult:
              _createPayType(payTypes, FdPrice.colAdult, fcMap, biMap, tafMap),
          child:
              _createPayType(payTypes, FdPrice.colChild, fcMap, biMap, tafMap),
          infant:
              _createPayType(payTypes, FdPrice.colInfant, fcMap, biMap, tafMap),
        ),
      );
    }).toList();
  }

  Map<String, List<Map<String, dynamic>>> _parsePayTypeInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    final payTypeMap = <String, List<Map<String, dynamic>>>{};
    info.split(',').forEach((item) {
      final parts = item.split('::');
      final fdPriceId = parts[8];
      payTypeMap.putIfAbsent(fdPriceId, () => []).add({
        PayType.colLocalId: parts[0],
        PayType.colPassengerType: parts[1],
        PayType.colSR: double.parse(parts[2]),
        PayType.colCC: parts[3],
        PayType.colCB: parts[4],
        PayType.colFB: parts[5],
        PayType.colMI: parts[6] == '1',
        PayType.colRT: double.parse(parts[7]),
      });
    });
    return payTypeMap;
  }

  Map<String, Map<String, dynamic>> _parseFcInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    return Map.fromEntries(
      info.split(',').map((item) {
        final parts = item.split('::');
        return MapEntry(parts[5], {
          Fc.colBF: int.parse(parts[1]),
          Fc.colTF: double.parse(parts[2]),
          Fc.colTAF: double.parse(parts[3]),
          Fc.colNF: double.parse(parts[4]),
        });
      }),
    );
  }

  Map<String, Map<String, dynamic>> _parseBiInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    return Map.fromEntries(
      info.split(',').map((item) {
        final parts = item.split('::');
        return MapEntry(parts[3], {
          Bi.colCB: parts[1],
          Bi.colIB: parts[2],
        });
      }),
    );
  }

  Map<String, Map<String, dynamic>> _parseTafInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    return Map.fromEntries(
      info.split(',').map((item) {
        final parts = item.split('::');
        return MapEntry(parts[7], {
          Taf.colYQ: int.parse(parts[1]),
          Taf.colMFT: double.parse(parts[2]),
          Taf.colOT: int.parse(parts[3]),
          Taf.colMF: int.parse(parts[4]),
          Taf.colAGST: int.parse(parts[5]),
          Taf.colYR: int.parse(parts[6]),
        });
      }),
    );
  }

  PayType? _createPayType(
      List<Map<String, dynamic>> payTypes,
      String passengerType,
      Map<String, Map<String, dynamic>> fcMap,
      Map<String, Map<String, dynamic>> biMap,
      Map<String, Map<String, dynamic>> tafMap) {
    final payType = payTypes.firstWhere(
        (pt) => pt[PayType.colPassengerType] == passengerType,
        orElse: () => {});
    if (payType.isEmpty) return null;

    final fcData = fcMap[payType[PayType.colLocalId]];
    final biData = biMap[payType[PayType.colLocalId]];
    final tafData = tafMap[payType[PayType.colLocalId]];

    return PayType(
        sR: payType[PayType.colSR],
        cc: payType[PayType.colCC],
        cB: payType[PayType.colCB],
        fB: payType[PayType.colFB],
        mI: payType[PayType.colMI],
        rT: payType[PayType.colRT],
        fC: fcData != null
            ? Fc(
                bf: fcData[Fc.colBF],
                tf: fcData[Fc.colTF],
                taf: fcData[Fc.colTAF],
                nf: fcData[Fc.colNF],
              )
            : null,
        bI: biData != null
            ? Bi(
                iB: biData[Bi.colIB],
                cB: biData[Bi.colCB],
              )
            : null,
        afC: AfC(
            taf: tafData != null
                ? Taf(
                    agst: tafData[Taf.colAGST],
                    mf: tafData[Taf.colMF],
                    mft: tafData[Taf.colMFT],
                    ot: tafData[Taf.colOT],
                    yq: tafData[Taf.colYQ],
                    yr: tafData[Taf.colYR])
                : null));
  }

  List<SI> _parseSegmentInfo(String? info, String? arrivalInfo,
      String? departureInfo, String? fdInfo) {
    if (info == null || info.isEmpty) return [];

    final arrivalMap = _parseArrivalAirportInfo(arrivalInfo);
    final departureMap = _parseDepartureAirportInfo(departureInfo);
    final fdMap = _parseFdInfo(fdInfo);

    return info.split(',').map((item) {
      final parts = item.split('::');
      final siId = parts[0];
      return SI(
        id: parts[1],
        stops: int.tryParse(parts[2]) ?? 0,
        duration: int.tryParse(parts[3]) ?? 0,
        dt: parts[4],
        at: parts[5],
        sN: int.tryParse(parts[6]) ?? 0,
        searchAirlineId: int.tryParse(parts[7]) ?? 0,
        aa: arrivalMap[siId],
        da: departureMap[siId],
        fD: fdMap[siId],
      );
    }).toList();
  }

  Map<String, Aa> _parseArrivalAirportInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    return Map.fromEntries(
      info.split(',').map((item) {
        final parts = item.split('::');
        return MapEntry(
          parts[8], // siId
          Aa(
            code: parts[1],
            name: parts[2],
            cityCode: parts[3],
            country: parts[4],
            terminal: parts[5],
            city: parts[6],
            countryCode: parts[7],
          ),
        );
      }),
    );
  }

  Map<String, Da> _parseDepartureAirportInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    return Map.fromEntries(
      info.split(',').map((item) {
        final parts = item.split('::');
        return MapEntry(
          parts[8], // siId
          Da(
            code: parts[1],
            name: parts[2],
            cityCode: parts[3],
            country: parts[4],
            terminal: parts[5],
            city: parts[6],
            countryCode: parts[7],
          ),
        );
      }),
    );
  }

  Map<String, FD> _parseFdInfo(String? info) {
    if (info == null || info.isEmpty) return {};
    return Map.fromEntries(
      info.split(',').map((item) {
        final parts = item.split('::');
        return MapEntry(
          parts[6], // siId
          FD(
            aI: AI(
              code: parts[1],
              name: parts[2],
              isLcc: parts[3] == '1',
            ),
            fN: parts[4],
            eT: parts[5],
          ),
        );
      }),
    );
  }

  List<Map<String, dynamic>> _parseSearchAirlineInfo(String? info) {
    if (info == null || info.isEmpty) return [];
    return info.split(',').map((item) {
      final parts = item.split('::');
      return {
        SearchAirlineInformation.colLocalId: int.parse(parts[0]),
        SearchAirlineInformation.coltripInfoType: parts[1]
      };
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
      int siId = await localService.rawInsert(
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
      await _insertArrivalAirport(siId: siId, aa: si.aa);
      await _insertDepartureAirport(siId: siId, da: si.da);
      await _insertFdSegmentInfo(siId: siId, fd: si.fD);
      return siId;
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return null;
    }
  }

  /// insert [Da] and retrn id
  Future<int?> _insertDepartureAirport(
      {required int siId, required Da? da}) async {
    if (da == null) return null;
    try {
      const departureInfoQuery = '''INSERT INTO ${Sql.departureAirportTable} (
                  ${Da.colSiId},
                  ${Da.colCity},
                  ${Da.colCityCode},
                  ${Da.colCode},
                  ${Da.colCountry},
                  ${Da.colCountryCode},
                  ${Da.colName},
                  ${Da.colTerminal})
          VALUES (?,?,?,?,?,?,?,?) 
        ''';
      await localService.rawInsert(departureInfoQuery, [
        siId,
        da.city ?? '',
        da.cityCode ?? '',
        da.code ?? '',
        da.country ?? '',
        da.countryCode ?? '',
        da.name ?? '',
        da.terminal ?? ''
      ]);

      return siId;
    } catch (e) {
      log('error _insertDepartureAirport -> $e');
      return null;
    }
  }

  /// insert [Aa] and retrn id
  Future<int?> _insertArrivalAirport(
      {required int siId, required Aa? aa}) async {
    if (aa == null) return null;
    try {
      const arrivalInfoQuery = '''INSERT INTO ${Sql.arrivalAirportTable} (
                  ${Aa.colSiId},
                  ${Aa.colCity},
                  ${Aa.colCityCode},
                  ${Aa.colCode},
                  ${Aa.colCountry},
                  ${Aa.colCountryCode},
                  ${Aa.colName},
                  ${Aa.colTerminal})
          VALUES (?,?,?,?,?,?,?,?) 
        ''';
      await localService.rawInsert(arrivalInfoQuery, [
        siId,
        aa.city ?? '',
        aa.cityCode ?? '',
        aa.code ?? '',
        aa.country ?? '',
        aa.countryCode ?? '',
        aa.name ?? '',
        aa.terminal ?? ''
      ]);

      return siId;
    } catch (e) {
      log('error _insertDepartureAirport -> $e');
      return null;
    }
  }

  /// insert [FD] and retrn id
  Future<int?> _insertFdSegmentInfo(
      {required int siId, required FD? fd}) async {
    if (fd == null) return null;
    try {
      const arrivalInfoQuery = '''INSERT INTO ${Sql.fdSegmentInfoTable} (
                  ${FD.colSiId},
                  ${FD.colAICode},
                  ${FD.colAIName},
                  ${FD.colAIIsLcc},
                  ${FD.colfN},
                  ${FD.coleT})
          VALUES (?,?,?,?,?,?) 
        ''';
      await localService.rawInsert(arrivalInfoQuery, [
        siId,
        fd.aI?.code ?? '',
        fd.aI?.name ?? '',
        (fd.aI?.isLcc ?? false) ? 1 : 0,
        fd.fN ?? '',
        fd.eT ?? '',
      ]);

      return siId;
    } catch (e) {
      log('error _insertFdSegmentInfo -> $e');
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
      final totalPriceId = await localService.rawInsert(totalPriceListQuery, [
        totalPriceList.id ?? '0',
        totalPriceList.fareIdentifier ?? '',
        totalPriceList.sri ?? '',
        totalPriceList.icca?.toString() ?? '',
        totalPriceList.msri ?? '',
        searchInfoId,
      ]);
      await _insertFdPriceItem(
          totalPriceListId: totalPriceId, fdPrice: totalPriceList.fd);
      return totalPriceId;
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return null;
    }
  }

  /// insert [FdPrice] and retrn id
  Future<void> _insertFdPriceItem(
      {required int totalPriceListId, required FdPrice? fdPrice}) async {
    if (fdPrice == null) return;
    try {
      const totalPriceListQuery = '''INSERT INTO ${Sql.payTypeTable} (
              ${PayType.colFdPriceId} ,
              ${PayType.colPassengerType} ,
              ${PayType.colSR} ,
              ${PayType.colCC} ,
              ${PayType.colCB} ,
              ${PayType.colFB} ,
              ${PayType.colMI} ,
              ${PayType.colRT})
          VALUES (?,?,?,?,?,?,?,?) 
        ''';
      final data = {
        FdPrice.colAdult: fdPrice.adult,
        FdPrice.colChild: fdPrice.child,
        FdPrice.colInfant: fdPrice.infant
      };
      for (var e in data.entries) {
        final payTypeId = await localService.rawInsert(totalPriceListQuery, [
          totalPriceListId,
          e.key,
          e.value?.sR ?? 0,
          e.value?.cc ?? '',
          e.value?.cB ?? '',
          e.value?.fB ?? '',
          (e.value?.mI ?? false) ? 1 : 0,
          e.value?.rT ?? 0,
        ]);
        await _insertFcPayTypeItem(payTypeId: payTypeId, fc: e.value?.fC);
        await _insertBiPayTypeItem(payTypeId: payTypeId, bi: e.value?.bI);
        await _insertAfcPayTypeItem(payTypeId: payTypeId, afc: e.value?.afC);
      }
      return;
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return;
    }
  }

  /// insert [Fc] and retrn id
  Future<void> _insertFcPayTypeItem(
      {required int payTypeId, required Fc? fc}) async {
    if (fc == null) return;
    try {
      const fcTableQueryQuery = '''INSERT INTO ${Sql.fCPaytypeTable} (
              ${Fc.colPayTypeId} ,
              ${Fc.colBF} ,
              ${Fc.colTF} ,
              ${Fc.colTAF} ,
              ${Fc.colNF} )
          VALUES (?,?,?,?,?) 
        ''';
      await localService.rawInsert(fcTableQueryQuery, [
        payTypeId,
        fc.bf ?? 0,
        fc.tf ?? 0,
        fc.taf ?? 0,
        fc.nf ?? 0,
      ]);
      return;
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return;
    }
  }

  /// insert [Bi] and retrn id
  Future<void> _insertBiPayTypeItem(
      {required int payTypeId, required Bi? bi}) async {
    if (bi == null) return;
    try {
      const biTableQueryQuery = '''INSERT INTO ${Sql.biPayTypeTable} (
              ${Bi.colPayTypeId} ,
              ${Bi.colIB} ,
              ${Bi.colCB} )
          VALUES (?,?,?) 
        ''';
      await localService.rawInsert(biTableQueryQuery, [
        payTypeId,
        bi.iB ?? '',
        bi.cB ?? '',
      ]);
      return;
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return;
    }
  }

  /// insert [AfC] and retrn id
  Future<void> _insertAfcPayTypeItem(
      {required int payTypeId, required AfC? afc}) async {
    if (afc == null || afc.taf == null) return;
    try {
      const afcTableQueryQuery = '''INSERT INTO ${Sql.tafPayTypeTable} (
              ${Taf.colPayTypeId} ,
              ${Taf.colYQ} ,
              ${Taf.colMFT} ,
              ${Taf.colOT} ,
              ${Taf.colMF} ,
              ${Taf.colAGST} ,
              ${Taf.colYR} )
          VALUES (?,?,?,?,?,?,?) 
        ''';
      await localService.rawInsert(afcTableQueryQuery, [
        payTypeId,
        afc.taf?.yq ?? 0,
        afc.taf?.mft ?? 0,
        afc.taf?.ot ?? 0,
        afc.taf?.mf ?? 0,
        afc.taf?.agst ?? 0,
        afc.taf?.yr ?? 0,
      ]);
      return;
    } catch (e) {
      log('error _insertSearchAirlineInfo -> $e');
      return;
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
