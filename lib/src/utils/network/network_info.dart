import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract class NetworkInfo {
  Future<bool> get hasConnection;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({required this.connectionChecker});
  final InternetConnection connectionChecker;

  @override
  Future<bool> get hasConnection => connectionChecker.hasInternetAccess;
}

final connectionCheckerProvider = Provider((ref) => InternetConnection());

final networkInfoProvider = Provider<NetworkInfo>(
  (ref) {
    final connectionChecker = ref.watch(connectionCheckerProvider);
    return NetworkInfoImpl(connectionChecker: connectionChecker);
  },
);
