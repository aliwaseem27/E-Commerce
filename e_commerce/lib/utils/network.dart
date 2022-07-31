import 'package:dio/dio.dart';

class Network {
  static final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.escuelajs.co/api/v1/",
      receiveDataWhenStatusError: true,
    )
  );

  static Future<void> initializeInterceptors() async {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request, handler) async {
        var headers = {
          "Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
          "Accept":"application/json",
        };
        // print(request.uri);
        request.headers.addAll(headers);
        return handler.next(request);
      },
      onResponse: (response, handler) async {
        // print(response.data);
        return handler.next(response);
      },
      onError: (error, handler) async {
        return handler.next(error);
      },
    ));
  }
}