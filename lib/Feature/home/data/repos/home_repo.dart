import 'package:flutter_advanced/Feature/home/data/apis/home_api_service.dart';
import 'package:flutter_advanced/Feature/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced/core/networking/api_error_handler.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationResponseModel>> getSepcialization() async {
    try {
      final response = await _homeApiService.getSepcialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
