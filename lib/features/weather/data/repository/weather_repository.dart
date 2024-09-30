import 'package:weather/features/weather/data/data_source/remote_data_source.dart';
import 'package:weather/features/weather/domain/entities/weather_entities.dart';
import 'package:weather/features/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<WeatherEntities> getWeatherByCityName(String countryName) async{
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}

//from data source