import '../../../core/network/dio_client.dart';
import '../domain/repayment_entity.dart';

class RepaymentRemoteDataSource {
  final DioClient _dioClient;
  RepaymentRemoteDataSource(this._dioClient);

  Future<List<RepaymentEntity>> getRepayments(int page, String query) async {
    // Simulated API
    await Future.delayed(const Duration(milliseconds: 400));
    final List data = List.generate(10, (i) => {
      "amount": 1000 + (page * 10 + i) * 10,
      "status": ((i + page) % 4 == 0) ? "Failed" : "Success",
      "date": DateTime.now().subtract(Duration(days: (i + page * 10) * 2)).toIso8601String()
    });
    return data.map((e) => RepaymentEntity.fromJson(e)).toList();
  }
}