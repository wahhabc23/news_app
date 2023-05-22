import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/constant.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';
import 'package:news_app/presentation/latest/widget/single_article_screen.dart';

class ImageTextTileWidget extends StatelessWidget {
  final ArticleData article;
  const ImageTextTileWidget({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => SingleArticle(article: article)));
        },
        child: Row(
          children: [
            SizedBox(
              height: 125,
              width: 200,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     onError: (exception, stackTrace) =>
              //         const Center(child: Icon(CupertinoIcons.wifi),),

              //     fit: BoxFit.cover,

              //     image: NetworkImage(
              //       article.urlToImage.toString(),
              //     ),
              //   ),
              // ),
              child: Image.network(article.urlToImage.toString(),
                  fit: BoxFit.fill, errorBuilder: (context, error, stackTrace) {
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
            ),
            swidth10,
            Expanded(
              child: Text(
                article.title ?? "No Title",
                maxLines: 5,
                style: const TextStyle(
                  fontSize: 20,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
