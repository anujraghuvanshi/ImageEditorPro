import 'package:firexcode/firexcode.dart';

class EmojiView extends StatefulWidget {
  final double left;
  final double top;
  final Function ontap;
  final Function(DragUpdateDetails) onpanupdate;
  final double fontsize;
  final String value;
  final TextAlign align;
  const EmojiView(
      {Key key,
      this.left,
      this.top,
      this.ontap,
      this.onpanupdate,
      this.fontsize,
      this.value,
      this.align})
      : super(key: key);
  @override
  _EmojiViewState createState() => _EmojiViewState();
}
//
// class _EmojiViewState extends State<EmojiView> {
//   @override
//   Widget build(BuildContext context) {
//     return widget.value
//         .text(
//           textAlign: widget.align,
//           style: TextStyle(
//             fontSize: widget.fontsize,
//           )
//         )
//         .xGesture(
//           onTap: widget.ontap,
//           onPanUpdate: widget.onpanupdate,
//         )
//         .xPositioned(
//           left: widget.left,
//           top: widget.top,
//         );
//   }
// }

//
class _EmojiViewState extends State<EmojiView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onPanStart: (details) {
          print('_dragging');
        },
        onPanUpdate: widget.onpanupdate,
        child: Container(
        color: Colors.white,
        child: CustomPaint(
        painter: RectanglePainter(Rect.fromLTWH(widget.left, widget.top, 100, 100)),
        )
      )
      )
    );
  }
}
//
//
class RectanglePainter extends CustomPainter {
  RectanglePainter(this.rect);
  final Rect rect;

  @override
  void paint(Canvas canvas, Size size) {
    // final left = 50.0;
    // final top = 100.0;
    // final right = 250.0;
    // final bottom = 200.0;
    // final rect = Rect.fromLTRB(left, top, right, bottom);
    // final paint = Paint()
    //   ..color = Colors.black
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 4;
    canvas.drawRect(rect, Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}