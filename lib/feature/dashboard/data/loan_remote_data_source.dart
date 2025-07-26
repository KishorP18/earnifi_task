import 'package:dio/dio.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/util/api_response_const.dart';
import '../domain/loan_entity.dart';

class LoanRemoteDataSource {
  final DioClient _dioClient;

  LoanRemoteDataSource(this._dioClient);

  Future<LoanEntity> fetchLoanDetails() async {
    try {
      // Simulated API delay
      await Future.delayed(const Duration(milliseconds: 3000));
      //TODO:use of real api
      // final response = await _dioClient.get(ApiEndpoints.loanDetails);

      return LoanEntity.fromJson(ApiResponseConst.loanDetails);
    } on DioException catch (e) {
      throw Exception('Failed to load loan data: ${e.message}');
    }
  }
}
