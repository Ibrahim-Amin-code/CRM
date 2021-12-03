import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;

  static inti()
  {
    dio = Dio(
        BaseOptions(
          // responseDecoder: ,
          baseUrl: 'http://technomasrsystems.com/Demos/CRM/ElemaryaCRM/api',
          receiveDataWhenStatusError: true,
        )
    );
  }

  static Future<Response> postData({
  required String url,
  Map<String,dynamic>? query,
  Map<String,dynamic>? data,

}) async
  {
    return dio.post(
    url,
    queryParameters: query??null,
    data: data
    );
  }
}