import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class AnimatedSync extends AnimatedWidget {
  const AnimatedSync({
    required this.animation,
    required this.callback,
    super.key,
  }) : super(listenable: animation);
  final VoidCallback callback;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final animation = this.animation;
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
        right: 8,
      ),
      child: InkWell(
        onTap: callback,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            children: <Widget>[
              Transform.rotate(
                angle: animation.value,
                child: const Icon(
                  Icons.sync,
                  color: darkGreen100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                child: Text(
                  'valor reemplazable',
                  style: TypographyStyle.normal.darkGreen100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimationSync extends StatefulWidget {
  const AnimationSync({required this.onPress, super.key});
  final void Function(AnimationController controller) onPress;

  @override
  AnimationSyncState createState() => AnimationSyncState();
}

class AnimationSyncState extends State<AnimationSync>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotateAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 200),
    );
    rotateAnimation = Tween<double>(begin: 0, end: 360).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller
      ..stop()
      ..reset()
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSync(
      animation: rotateAnimation,
      callback: () async {
        await controller.forward();
        widget.onPress(controller);
        // await syncDatabaseFull();
        // controller.stop();
        // controller.reset();
      },
    );
  }
}
