import 'package:dio/dio.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/util/api_endpoints.dart';
import '../../../core/util/api_response_const.dart';
import '../domain/loan_entity.dart';

class LoanRemoteDataSource {
  final DioClient _dioClient;

  LoanRemoteDataSource(this._dioClient);

  Future<LoanEntity> fetchLoanDetails() async {
    try {
      // Simulating API call with mocked response
      //TODO:use of real api
     // final response = await _dioClient.get(ApiEndpoints.loanDetails);

      // Assume mock response format
      return LoanEntity.fromJson(ApiResponseConst.loanDetails);
    } on DioException catch (e) {
      throw Exception('Failed to load loan data: ${e.message}');
    }
  }
}
