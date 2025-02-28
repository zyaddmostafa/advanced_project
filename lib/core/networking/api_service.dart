import 'package:dio/dio.dart';
import 'package:flutter_advanced/Feature/login/data/models/login_request_body.dart';
import 'package:flutter_advanced/Feature/login/data/models/login_response.dart';
import 'package:flutter_advanced/core/networking/api_constants.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
