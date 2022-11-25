import 'package:f290_acf_navegacao_e_temas/model/feed_model.dart';
import 'package:f290_acf_navegacao_e_temas/pages/detail/detail_pagge.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(children: createList(context)),
    );
  }

  List<Widget> createList(BuildContext context) {
    // Gerar lista de Widgets com 20 elementos
    return List.generate(20, (index) {
      // Gerar um objeto da nossa model class a partir do Faker()
      final feed = Feed.fromFaker(faker);

      // Gerar Card com os dados a partir do objeto feed
      return Card(
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => DetailWidget(
                      feed: feed,
                    )),
              ),
            );
          },
          leading: Image.network(feed.imageUrl),
          title: Text(
            feed.title,
          ),
          subtitle:
              Text(feed.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
      );
    });
  }
}
