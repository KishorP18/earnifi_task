import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../../feature/dashboard/data/loan_repository_impl.dart';
import '../../feature/dashboard/domain/loan_repository.dart';
import '../../feature/dashboard/domain/loan_usecase.dart';
import '../network/dio_client.dart';
// Repayment imports
import '../../feature/repayment/data/repayment_repository_impl.dart';
import '../../feature/repayment/domain/repayment_repository.dart';
import '../../feature/repayment/domain/repayment_usecase.dart';

final locator = GetIt.instance;

void setupLocator() {
  // Register Dio and Network Client
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<DioClient>(() => DioClient(locator<Dio>()));

  // Dashboard (Loan Module)
  locator.registerLazySingleton<LoanRepository>(
    () => LoanRepositoryImpl(locator<DioClient>()),
  );
  locator.registerLazySingleton(() => LoanUseCase(locator<LoanRepository>()));

  // Repayment Module
  locator.registerLazySingleton<RepaymentRepository>(
    () => RepaymentRepositoryImpl(locator<DioClient>()),
  );
  locator.registerLazySingleton(
    () => RepaymentUseCase(locator<RepaymentRepository>()),
  );
}
