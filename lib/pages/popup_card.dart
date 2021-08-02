import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tinder_clone/pages/custom_rect_tween.dart';

class PopupCard extends StatelessWidget {
  final String heroTag;
  final String description;
  PopupCard(this.heroTag, this.description);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Hero(
          tag: heroTag,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin, end: end);
          },
          child: Material(
            color: Colors.white70,
            elevation: 2,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    Text(description),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}