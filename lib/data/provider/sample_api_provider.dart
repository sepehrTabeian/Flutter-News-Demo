import 'package:sample/data/services/service_locatior.dart';
import 'package:dio/dio.dart';

class SampleApiProvider{
  Future<Response> getAsyncData(String endpoint,Map<String,dynamic>? query){
    var dio=locator<Dio>();
    if(query!=null){
      return dio.get(endpoint,queryParameters:query );
    }else{
      return  dio.get(endpoint);
    }
  }
}