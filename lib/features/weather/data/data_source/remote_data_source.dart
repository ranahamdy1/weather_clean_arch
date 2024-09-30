import 'package:weather/core/utils/constant.dart';
import 'package:dio/dio.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}
class RemoteDataSource extends BaseRemoteDataSource{
  @override
  Future<WeatherModel>  getWeatherByCountryName(String countryName) async {
    final dio = Dio();
    final response = await dio.get('${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');
    return WeatherModel.fromJson(response.data);
  }
}