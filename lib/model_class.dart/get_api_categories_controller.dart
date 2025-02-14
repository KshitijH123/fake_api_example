import 'package:fake_api_example/model_class.dart/get_api_categories_model.dart';
import 'package:fake_api_example/model_class.dart/get_api_categories_service.dart';
import 'package:get/get.dart';

class CategoryDetailController extends GetxController {
  final CategoryDetailService _categoryDetailService = CategoryDetailService();
  List<CategoryDetailModel> categories = [];

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  void fetchCategories() async {
    try {
      categories = await _categoryDetailService.fetchCategories();
      update();
    } catch (e) {
      print("Error fetching categories: $e");
    }
  }
}
