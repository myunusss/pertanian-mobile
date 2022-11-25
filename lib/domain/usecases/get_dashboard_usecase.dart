import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../entities/dashboard/dashboard.dart';

class GetDashboardUseCaseParams extends Equatable {
  final String region;
  final String comodityId;
  final String year;
  final String type;
  final String category;

  const GetDashboardUseCaseParams({
    required this.region,
    required this.comodityId,
    required this.year,
    required this.type,
    required this.category,
  });

  @override
  List<Object> get props => [
        region,
        comodityId,
        year,
        type,
        category,
      ];

  GetDashboardUseCaseParams copyWith({
    String? region,
    String? comodityId,
    String? year,
    String? type,
    String? category,
  }) =>
      GetDashboardUseCaseParams(
        region: region ?? this.region,
        comodityId: comodityId ?? this.comodityId,
        year: year ?? this.year,
        type: type ?? this.type,
        category: category ?? this.category,
      );
}

@lazySingleton
class GetDashboardUseCase extends FutureUseCase<Dashboard, GetDashboardUseCaseParams> {
  final MyRepositoryImpl myRepository;

  GetDashboardUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Dashboard>> execute(GetDashboardUseCaseParams params) {
    return myRepository.getDashboard(params);
  }
}
