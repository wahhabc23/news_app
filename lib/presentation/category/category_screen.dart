import 'package:flutter/material.dart';
import 'package:news_app/presentation/category/widget/category_item_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          _SourceCategoryWidget(
            categoryName: 'General',
          ),
          _SourceCategoryWidget(categoryName: 'Business'),
          _SourceCategoryWidget(categoryName: 'Entertainment'),
          _SourceCategoryWidget(categoryName: 'Technology'),
          _SourceCategoryWidget(categoryName: 'Sports'),
          _SourceCategoryWidget(categoryName: 'Science'),
          _SourceCategoryWidget(categoryName: 'Health'),
        ],
      ),
    );
  }
}

class _SourceCategoryWidget extends StatelessWidget {
  final String categoryName;
  const _SourceCategoryWidget({
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ListTile(
        tileColor: Colors.blue[50],
        textColor: Colors.blue,
        titleTextStyle: const TextStyle(fontSize: 25),
        style: ListTileStyle.list,
        title: Center(
          child: Text(
            categoryName,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  CategoryItemScreen(category: categoryName)));
        },
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.transparent)),
      ),
    );
  }
}

class SourceCardsWidget extends StatelessWidget {
  const SourceCardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Center(
        child: Text(
          'source name',
          style: TextStyle(color: Colors.grey[600], fontSize: 25),
        ),
      ),
    );
  }
}
