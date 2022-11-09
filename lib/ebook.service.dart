import 'package:dio/dio.dart';
import 'EbookAPIModel.dart';

class EbookService {
  Future <EbookApiModel> fetchbooks() async {
    var dio = Dio();
    final books = await dio.get('https://www.googleapis.com/books/v1/volumes?q=android&maxResults=40');
    return EbookApiModel.fromJson(books.data) ;
  }
}