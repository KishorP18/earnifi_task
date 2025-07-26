import 'repayment_entity.dart';
import 'repayment_repository.dart';

class RepaymentUseCase {
  final RepaymentRepository _repository;
  RepaymentUseCase(this._repository);

  Future<List<RepaymentEntity>> execute({required int page, required String query}) async {
    return _repository.fetchRepayments(page: page, query: query);
  }
}