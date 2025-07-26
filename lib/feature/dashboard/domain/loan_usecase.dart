import 'loan_entity.dart';
import 'loan_repository.dart';

class LoanUseCase {
  final LoanRepository _loanRepository;

  LoanUseCase(this._loanRepository);

  Future<LoanEntity> execute() async {
    return await _loanRepository.getLoanDetails();
  }
}
