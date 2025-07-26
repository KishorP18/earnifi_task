import '../../../core/network/dio_client.dart';
import '../domain/repayment_entity.dart';

class RepaymentRemoteDataSource {
  final DioClient _dioClient;
  RepaymentRemoteDataSource(this._dioClient);

  Future<List<RepaymentEntity>> getRepayments(
    int page,
    String query,
    String status,
  ) async {
    // Simulated API
    await Future.delayed(const Duration(milliseconds: 400));
    final List data = List.generate(
      10,
      (i) => {
        "amount": 1000 + (page * 10 + i) * 10,
        "status": ((i + page) % 4 == 0) ? "Failed" : "Success",
        "date": DateTime.now()
            .subtract(Duration(days: (i + page * 10) * 2))
            .toIso8601String(),
      },
    );
    var repayments = data.map((e) => RepaymentEntity.fromJson(e)).toList();
    if (status != 'All') {
      repayments = repayments.where((e) => e.status == status).toList();
    }
    return repayments;
  }
}
