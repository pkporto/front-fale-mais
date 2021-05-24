
class ResponseAPI {
  dynamic cod ;
  dynamic data ;
  dynamic message;

  ResponseAPI({this.cod, this.data, this.message});

  factory ResponseAPI.fromJson(Map<String, dynamic> json) {
    return ResponseAPI(
      cod: json['cod'],
      data: json['data'] != null ? (json['data']) : null,
      message: json['message'],
    );
  }
}