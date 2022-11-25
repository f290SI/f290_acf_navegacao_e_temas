import 'package:faker/faker.dart';

class Feed {
  final String title;
  final String subtitle;
  final String imageUrl;

  Feed(this.title, this.subtitle, this.imageUrl);

  Feed.fromFaker(Faker faker)
      : title = faker.conference.name(),
        subtitle = faker.lorem.sentences(10).join().replaceAll('.', '. '),
        imageUrl = faker.image.image(random: true, keywords: ['programming']);
}
