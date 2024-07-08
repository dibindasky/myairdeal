import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_data.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search.dart';

abstract class HomeRepo {
  Future<Either<Failure, RecentDetailSearch>> getRecentSearches();
  Future<Either<Failure, CitySearchData>> getAirportsSearches(
      {required String cityname});
}
