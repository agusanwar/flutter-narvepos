import 'package:flutter/material.dart';
import 'package:narvepos/core/components/search_input.dart';

class SearchItem extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;

  const SearchItem({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SearchInput(
        controller: controller,
        onChanged: onChanged,
        hintText: 'Search item...',
      ),
    );
  }
}
