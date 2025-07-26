import 'loan_entity.dart';

abstract class LoanRepository {
  Future<LoanEntity> getLoanDetails();
}
