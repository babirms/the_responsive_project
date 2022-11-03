import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: ((context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[600] as Color),
                ),
                child: Row(children: [
                  const SizedBox(
                    width: 4,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[500] as Color,
                    ),
                    onPressed: () {},
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Pesquise aqui',
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Aprender',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            if (constraints.maxWidth >= 500) ...[
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ],
        );
      })),
    );
  }
}
