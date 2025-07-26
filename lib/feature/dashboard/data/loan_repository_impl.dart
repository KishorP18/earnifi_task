import '../../../core/network/dio_client.dart';
import '../domain/loan_entity.dart';
import '../domain/loan_repository.dart';
import 'loan_remote_data_source.dart';

class LoanRepositoryImpl implements LoanRepository {
  final DioClient _dioClient;

  late final LoanRemoteDataSource _remoteDataSource;

  LoanRepositoryImpl(this._dioClient) {
    _remoteDataSource = LoanRemoteDataSource(_dioClient);
  }

  @override
  Future<LoanEntity> getLoanDetails() async {
    return await _remoteDataSource.fetchLoanDetails();
  }
}
