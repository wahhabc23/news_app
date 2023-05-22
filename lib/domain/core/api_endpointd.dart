import 'package:news_app/infrastructure/keys.dart';

class ApiEndPoints {
  static const search =
      'https://newsapi.org/v2/everything?apiKey=$apiKey&sortBy=relevancy';
  static const trending =
      'https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=$apiKey&sortBy=popularity';
  static const latest =
      'https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=$apiKey&sortBy=publishedAt';

static const getSource = 'https://newsapi.org/v2/top-headlines/sources?apiKey=$apiKey&language=en';
static const getFromSource = 'https://newsapi.org/v2/top-headlines?apiKey=$apiKey';
static const getCategory = 'https://newsapi.org/v2/top-headlines/?apiKey=$apiKey&language=en&sortBy=publishedAt';
}
