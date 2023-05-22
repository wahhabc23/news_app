import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/core/colors.dart';
import 'package:news_app/core/constant.dart';

import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';

class SingleArticle extends StatelessWidget {
  final ArticleData article;
  const SingleArticle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    var date = DateTime.tryParse(article.publishedAt.toString());
    final String formattedDate;
    if (date == null) {
      formattedDate = 'Not Available';
    } else {
      formattedDate = DateFormat.yMMMEd().format(date).toString();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryLayerColor,
        foregroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title.toString(),
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            sheight10,
            Image.network(article.urlToImage.toString(), fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
              return const Center(child: Text('No Image Found.'));
            }, loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
            }),
            sheight10,
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                // decoration: TextDecoration.underline,
              ),
            ),
            sheight10,
            Text(
              '${article.description.toString()}. ${article.content.toString()}',
              style: const TextStyle(fontSize: 16),
            ),
            sheight20,
            Row(
              children: [
                const Text('Author: '),
                Text(article.author == null
                    ? 'Not Given'
                    : article.author.toString()),
              ],
            ),
            Row(
              children: [
                const Text('Date: '),
                Text(formattedDate),
              ],
            )
          ],
        ),
      )),
    );
  }
}
