import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search.dart';

abstract class HomeRepo {
  Future<Either<Failure, RecentDetailSearch>> getRecentSearches();
}
