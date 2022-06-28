import 'dart:ffi';

class Response {
  Bool success;
  String message;
  Response({required this.message, required this.success});
}
