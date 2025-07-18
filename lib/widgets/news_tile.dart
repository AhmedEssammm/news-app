import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/news_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsView(
                news: NewsModel(
                  title: articleModel.title,
                  description:
                      articleModel.subTitle ?? 'Description not available',
                  imageUrl: articleModel.image ??
                      'https://i0.wp.com/newsdata.io/blog/wp-content/uploads/2024/01/Snipaste_2021-11-28_13-55-49.jpg?fit=701%2C351&ssl=1',
                  author: articleModel.author ?? 'Unknown',
                  content: articleModel.content ?? 'Content not available',
                  publishedAt: articleModel.publishedAt ?? 'Unknown',
                ),
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image ??
                    'https://i0.wp.com/newsdata.io/blog/wp-content/uploads/2024/01/Snipaste_2021-11-28_13-55-49.jpg?fit=701%2C351&ssl=1',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articleModel.subTitle ?? '',
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
