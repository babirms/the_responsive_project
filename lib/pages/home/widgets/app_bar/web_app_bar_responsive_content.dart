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
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Pesquise aqui',
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        );
      })),
    );
  }
}
