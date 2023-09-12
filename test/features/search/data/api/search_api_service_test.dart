import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_app/src/features/search/data/api/search_api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_api_service_test.mocks.dart';

// Create a mock Dio client
// class MockDio extends Mock implements Dio {}

@GenerateMocks([Dio])
void main() {
  group('SearchApiService', () {
    late MockDio mockDio;
    late SearchApiService apiService;

    setUp(() {
      mockDio = MockDio();
      apiService = SearchApiService(dio: mockDio);
    });

    // Test searchUsers method
    test('searchUsers should return a response', () async {
      const query = 'codesworth';
      final mockResponse = Response(data: {}, requestOptions: RequestOptions());

      // Mock the Dio GET request
      when(mockDio.get('/search/users?q=$query'))
          .thenAnswer((_) async => mockResponse);

      final response = await apiService.searchUsers(query);

      // Assert that the response is not null
      expect(response, isNotNull);
    });
    test('searchRepositories should return a response', () async {
      const query = 'codesworth';
      final mockResponse = Response(data: {}, requestOptions: RequestOptions());

      // Mock the Dio GET request
      when(mockDio.get('/search/repositories?q=$query'))
          .thenAnswer((_) async => mockResponse);

      final response = await apiService.searchRepositories(query);

      // Assert that the response is not null
      expect(response, isNotNull);
    });

    test('getUser should return a response', () async {
      const username = 'codesworth';
      final mockResponse = Response(data: {}, requestOptions: RequestOptions());

      // Mock the Dio GET request
      when(mockDio.get('/users/$username'))
          .thenAnswer((_) async => mockResponse);

      final response = await apiService.getUser(username);

      // Assert that the response is not null
      expect(response, isNotNull);
    });

    test('getUsersRepos should return a response', () async {
      const username = 'codesworth';
      final mockResponse = Response(data: {}, requestOptions: RequestOptions());

      // Mock the Dio GET request
      when(mockDio.get('/users/$username/repos'))
          .thenAnswer((_) async => mockResponse);

      final response = await apiService.getUsersRepos(username);

      // Assert that the response is not null
      expect(response, isNotNull);
    });

    test('getDataFromURL should return a response', () async {
      const url = 'github.com/codesworth';
      final mockResponse = Response(data: {}, requestOptions: RequestOptions());

      // Mock the Dio GET request
      when(mockDio.get(url)).thenAnswer((_) async => mockResponse);

      final response = await apiService.getDataFromURL(url);

      // Assert that the response is not null
      expect(response, isNotNull);
    });
  });
}
