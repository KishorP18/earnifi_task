import 'repayment_entity.dart';

abstract class RepaymentRepository {
  Future<List<RepaymentEntity>> fetchRepayments({
    required int page,
    required String query,
    required String status,
  });
}
