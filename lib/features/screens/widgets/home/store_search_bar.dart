import 'package:flutter/material.dart';

class StoreSearchBar extends StatelessWidget {
  const StoreSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search in Store',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)
          )
      ),

    );
  }
}