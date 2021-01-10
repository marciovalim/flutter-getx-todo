import 'package:flutter/material.dart';
import 'package:todo_with_getx/presentation/widgets/controllers/search_field_controller.dart';

class SearchField extends StatelessWidget {
  final SearchFieldController controller;

  const SearchField({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: controller.setSearchText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search, color: Colors.white70),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        disabledBorder: InputBorder.none,
      ),
    );
  }
}
