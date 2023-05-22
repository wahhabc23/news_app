import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/latest/latest_bloc.dart';
import 'package:news_app/presentation/latest/widget/image_text_widget.dart';

class LatestScreen extends StatelessWidget {
  const LatestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<LatestBloc>().add(const LatestEvent.started());
    });
    return BlocBuilder<LatestBloc, LatestState>(
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
          itemBuilder: (BuildContext context, int index) => ImageTextTileWidget(
            article: state.articlesList[index],
          ),
          itemCount: state.articlesList.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        );
      },
    );
  }
}
