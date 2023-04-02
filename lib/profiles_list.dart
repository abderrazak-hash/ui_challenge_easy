import 'package:flutter/material.dart';

class ProfilesList extends StatefulWidget {
  final List<String> items;
  final double albumWidth;
  final double space, size;
  final double borderWidth;
  final Color borderColor;
  const ProfilesList({
    Key? key,
    required this.items,
    this.space = -10.0,
    this.albumWidth = 73.0,
    this.size = 30.0,
    this.borderWidth = 2.0,
    this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  State<ProfilesList> createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  double edge = 0;
  late int itemsPerLine;

  @override
  void initState() {
    super.initState();
    setState(() {
      double itemSpace = widget.size + widget.space;
      itemsPerLine = widget.albumWidth ~/ itemSpace;
    });
  }

  @override
  Widget build(BuildContext context) {
    double left = 0;
    return SizedBox(
      child: Wrap(
        children: List.generate(
          widget.items.length % itemsPerLine == 0
              ? widget.items.length ~/ itemsPerLine
              : widget.items.length ~/ itemsPerLine + 1,
          ((i) => SizedBox(
                width: widget.albumWidth,
                height: widget.size,
                child: Stack(
                  children: List.generate(
                    widget.items.length % itemsPerLine == 0
                        ? itemsPerLine
                        : i < widget.items.length ~/ itemsPerLine
                            ? itemsPerLine
                            : widget.items.length % itemsPerLine,
                    (j) {
                      if (j == 0) {
                        left = 0;
                      }
                      if (j != 0) {
                        left = left + widget.size + widget.space;
                      }
                      return Positioned(
                          left: j == 0 ? 0 : left,
                          child: CircleAvatar(
                            radius: widget.size / 2,
                            backgroundColor: widget.borderColor,
                            child: Center(
                              child: CircleAvatar(
                                radius: (widget.size - widget.borderWidth) / 2,
                                backgroundImage: AssetImage(
                                  widget.items[
                                      i * widget.items.length ~/ widget.size +
                                          j],
                                ),
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
