class ApiResponseResult {
  factory ApiResponseResult.success(String success) {
    return ApiResponseResult.success(success);
  }

  factory ApiResponseResult.error(Exception error) {
    return ApiResponseResult.error(error);
  }
}
