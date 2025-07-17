import 'package:flutter/material.dart';

class SequentialFadeSlide extends StatefulWidget {
  final List<Widget> children;
  final int animationDurationMs;
  final int animationDelayMs;

  const SequentialFadeSlide({
    super.key,
    required this.children,
    this.animationDurationMs = 500,
    this.animationDelayMs = 200,
  });

  @override
  State<SequentialFadeSlide> createState() => _SequentialFadeSlideState();
}

class _SequentialFadeSlideState extends State<SequentialFadeSlide>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final List<Animation<double>> _fadeAnimations;
  late final List<Animation<Offset>> _slideAnimations;

  @override
  void initState() {
    super.initState();

    final totalDuration =
        widget.animationDurationMs +
        (widget.animationDelayMs * (widget.children.length - 1));

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: totalDuration),
    );

    _fadeAnimations = List.generate(widget.children.length, (index) {
      final start = (index * widget.animationDelayMs) / totalDuration;
      final end = start + (widget.animationDurationMs / totalDuration);
      return CurvedAnimation(
        parent: _controller,
        curve: Interval(start, end, curve: Curves.easeOut),
      );
    });

    _slideAnimations = List.generate(widget.children.length, (index) {
      final start = (index * widget.animationDelayMs) / totalDuration;
      final end = start + (widget.animationDurationMs / totalDuration);
      return Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(start, end, curve: Curves.easeOut),
        ),
      );
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.children.length, (index) {
        return SlideTransition(
          position: _slideAnimations[index],
          child: FadeTransition(
            opacity: _fadeAnimations[index],
            child: widget.children[index],
          ),
        );
      }),
    );
  }
}
