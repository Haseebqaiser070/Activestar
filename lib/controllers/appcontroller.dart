import 'package:activestar/models/item_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AppController extends GetxController {
  RxBool isLoading = false.obs;
  late Items items;

  @override
  Future<void> onReady() async {
    super.onReady();
    final response = await http
        .get(Uri.parse('https://appka.activstar.eu/wp-json/app/testimonials'));
    isLoading.value = true;
    if (response.statusCode == 200) {
      items = Items.fromJson(json.decode(response.body));
      isLoading.value = false;
      return;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
