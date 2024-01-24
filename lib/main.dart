import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'List View ',
    home: ListTutorial(),
  ));
}

class ListTutorial extends StatelessWidget {
  const ListTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Text('Daftar Tutorial'),
      ),
      body: ListView(
        children: const [
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/1005/511/png-transparent-web-development-html-logo-world-wide-web-consortium-create-html-signature-angle-text-rectangle-thumbnail.png',
              title: 'HTML'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/696/424/png-transparent-logo-css-css3-thumbnail.png',
              title: 'CSS'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/640/199/png-transparent-javascript-logo-html-javascript-logo-angle-text-rectangle-thumbnail.png',
              title: 'Javascript'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/751/3/png-transparent-logo-php-html-others-text-trademark-logo-thumbnail.png',
              title: 'PHP'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/399/620/png-transparent-laravel-hd-logo.png',
              title: 'Laravel'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/578/816/png-transparent-java-class-file-java-platform-standard-edition-java-development-kit-java-runtime-environment-coffee-jar-text-class-orange-thumbnail.png',
              title: 'Java'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/46/626/png-transparent-c-logo-the-c-programming-language-computer-icons-computer-programming-source-code-programming-miscellaneous-template-blue.png',
              title: 'C++'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/359/101/png-transparent-aperture-laboratories-science-technology-laboratory-portal-science-blue-text-computer-thumbnail.png',
              title: 'React'),
          ContentList(
              image:
                  'https://w7.pngwing.com/pngs/293/485/png-transparent-tailwind-css-hd-logo.png',
              title: 'Tailwind CSS'),
        ],
      ),
    );
  }
}

class ContentList extends StatelessWidget {
  const ContentList({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          children: [
            Image(
              image: NetworkImage(image),
              width: 100.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: [
                    Text(title,
                        style: const TextStyle(
                          fontSize: 20.0,
                        )),
                    const Text(
                      'Tutorial description.....',
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
