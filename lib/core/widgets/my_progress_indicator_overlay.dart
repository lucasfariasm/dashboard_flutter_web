// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProgressIndicatorOverlay extends StatelessWidget {
  final bool loading;
  final Widget child;

  const ProgressIndicatorOverlay({
    Key? key,
    this.loading = false,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        if (loading)
          const ModalBarrier(
            dismissible: false,
            color: Colors.black87,
          ),
        if (loading)
          const Center(
            child: CircularProgressIndicator(),
          )
      ],
    );
  }
}
