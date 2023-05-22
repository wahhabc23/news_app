import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/search/search_bloc.dart';
import 'package:news_app/presentation/latest/widget/image_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<SearchBloc>().add(const SearchEvent.started());
      },
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CupertinoSearchTextField(
            onChanged: (value) {
              if (value.isEmpty) {
                return;
              }
              EasyDebounce.debounce(
                  'search', const Duration(milliseconds: 1000), () {
                context
                    .read<SearchBloc>()
                    .add(SearchEvent.searchNews(query: value));
              });
            },
            style: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
          ),
          //* ListView
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  );
                } else if (state.isError) {
                  return const Center(
                      child: Column(
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                      Text(
                          'Unable to get data from server. Please check your connection.'),
                    ],
                  ));
                } else if (state.searchList.isNotEmpty) {
                  return ListView.separated(
                    itemBuilder: (BuildContext context, int index) =>
                        ImageTextTileWidget(
                      article: state.searchList[index],
                    ),
                    itemCount: state.searchList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  );
                } else if (state.articlesList.isEmpty) {
                  return const Center(
                      child: Column(
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                      Text('No data found.'),
                    ],
                  ));
                }
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) =>
                      ImageTextTileWidget(
                    article: state.articlesList[index],
                  ),
                  itemCount: state.articlesList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
