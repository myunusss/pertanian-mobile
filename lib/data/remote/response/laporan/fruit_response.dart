import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pertanian/data/remote/response/dashboard/comodity_response.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';

part 'fruit_response.freezed.dart';
part 'fruit_response.g.dart';

@freezed
class FruitResponse with _$FruitResponse {
  const FruitResponse._();

  const factory FruitResponse({
    int? id,
    @JsonKey(name: 'desa_id') int? desaId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'comodity_id') int? comodityId,
    @JsonKey(name: 'luas_tanam') String? luasTanam,
    @JsonKey(name: 'tanam_hasil') String? tanamHasil,
    @JsonKey(name: 'jumlah_produksi') String? jumlahProduksi,
    String? provitas,
    @JsonKey(name: 'harga_produsen') String? hargaProdusen,
    @JsonKey(name: 'harga_grosir') String? hargaGrosir,
    @JsonKey(name: 'harga_eceran') String? hargaEceran,
    @JsonKey(name: 'is_verified') int? isVerified,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    ComodityResponse? comodity,
  }) = _FruitResponse;

  factory FruitResponse.fromJson(Map<String, dynamic> json) => _$FruitResponseFromJson(json);

  Fruit toDomain() => Fruit(
        id: id,
        desaId: desaId,
        userId: userId,
        comodityId: comodityId,
        luasTanam: luasTanam,
        tanamHasil: tanamHasil,
        jumlahProduksi: jumlahProduksi,
        provitas: provitas,
        hargaProdusen: hargaProdusen,
        hargaGrosir: hargaGrosir,
        hargaEceran: hargaEceran,
        isVerified: isVerified,
        createdAt: createdAt,
        updatedAt: updatedAt,
        comodity: comodity?.toDomain(),
      );
}
