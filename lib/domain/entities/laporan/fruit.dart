import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/domain/entities/dashboard/comodity.dart';

part 'fruit.freezed.dart';

@freezed
class Fruit with _$Fruit {
  const factory Fruit({
    required int? id,
    required int? desaId,
    required int? userId,
    required int? comodityId,
    required String? luasTanam,
    required String? tanamHasil,
    required String? jumlahProduksi,
    required String? provitas,
    required String? hargaProdusen,
    required String? hargaGrosir,
    required String? hargaEceran,
    required int? isVerified,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required Comodity? comodity,
  }) = _Fruit;
}
