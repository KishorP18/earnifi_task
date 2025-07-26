import '../domain/repayment_entity.dart';
import '../domain/repayment_repository.dart';
import 'repayment_remote_data_source.dart';
import '../../../core/network/dio_client.dart';

class RepaymentRepositoryImpl implements RepaymentRepository {
  final RepaymentRemoteDataSource _remote;
  RepaymentRepositoryImpl(DioClient client) : _remote = RepaymentRemoteDataSource(client);

  @override
  Future<List<RepaymentEntity>> fetchRepayments({required int page, required String query}) {
    return _remote.getRepayments(page, query);
  }
}