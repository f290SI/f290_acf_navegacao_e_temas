import 'package:f290_acf_navegacao_e_temas/pages/theme/theme_sample.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  FeedWidget({super.key});

  final List<Map<String, String>> content = [
    {
      'curso': 'DSM',
      'titulo': 'Inscrições prorrogadas',
      'conteudo':
          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. '
    },
    {
      'curso': 'DSM',
      'titulo': 'Semana de Tecnologia',
      'conteudo':
          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. '
    },
    {
      'curso': 'DSM',
      'titulo': 'Capacitação Google Cloud',
      'conteudo':
          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. '
    },
    {
      'curso': 'ADM',
      'titulo': 'Inscrições prorrogadas',
      'conteudo':
          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. '
    },
    {
      'curso': 'ADM',
      'titulo': 'Filosofia Encantar: Disney',
      'conteudo':
          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. '
    },
  ];

  List<Widget> createList(BuildContext context) {
    return List.generate(
        10,
        (index) => Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const DetailWidget())));
                },
                leading: Image.network(faker.image.image(
                    random: true, keywords: ['pizza', 'studente', 'show'])),
                title: Text(
                  faker.lorem.sentence(),
                ),
                subtitle: Text(
                    faker.lorem.sentences(5).join().replaceAll('.', '. '),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(children: createList(context))
      /*ListView.builder(
          itemCount: content.length,
          itemBuilder: ((context, index) {
            final c = content[index];
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailWidget(),
                      ));
                },
                leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(c['curso']!)),
                title: Text(c['titulo']!),
                subtitle: Text(c['conteudo']!),
                trailing: const Icon(Icons.arrow_forward),
              ),
            );
          }))*/
      ,
    );
  }
}
