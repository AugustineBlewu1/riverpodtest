import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/models/news_model.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  final dio = Dio();
  Future<NewsModel> getNews() async {
    try {
      final response = await dio.get('https://www.boredapi.com/api/activity');
print(response.data);
      return NewsModel.fromMap(response.data);
    } catch (e) {
      print(e);
      throw ErrorSummary('Sorry try again later');
    }
  }
}
