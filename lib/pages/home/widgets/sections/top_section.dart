import 'package:flutter/material.dart';
import 'package:the_responsive_project/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      if (maxWidth >= 1200) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network(
                  'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                      width: 450,
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        children: [
                          const Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          const SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      )),
                ),
              ),
            ],
          ),
        );
      }

      return Container();
    });
  }
}
