import 'package:get/state_manager.dart';

class SearchFieldController extends GetxController {
  final _searchText = "".obs;

  String get searchText => _searchText.value;

  void setSearchText(String value) => _searchText.value = value;
}
