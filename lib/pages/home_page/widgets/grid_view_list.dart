import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:totembear/constant.dart';

class GirdViewList extends StatelessWidget {
  const GirdViewList({
    Key key,
    @required this.size,
    @required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final Size size;
  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        childAspectRatio: size.width / (size.height / 2),
      ),
      itemCount: gridViewList.length,
      itemBuilder: (context, index) {
        final text = gridViewList[index];
        return _GridElement(
          text: text,
          textStyle: _textStyle,
          index: index,
        );
      },
    );
  }
}

class _GridElement extends StatefulWidget {
  const _GridElement({
    Key key,
    @required this.text,
    @required TextStyle textStyle,
    this.index,
  })  : _textStyle = textStyle,
        super(key: key);

  final String text;
  final TextStyle _textStyle;
  final int index;

  @override
  __GridElementState createState() => __GridElementState();
}

class __GridElementState extends State<_GridElement> {
  Future simpleDialog({BuildContext context, String text}) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return _SimpleDialog(
            text: text,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (widget.index == 0) {
          await simpleDialog(context: context, text: widget.text);
        }
        if (widget.index == 1) {
          await simpleDialog(context: context, text: widget.text);
        }
        if (widget.index == 2) {
          await simpleDialog(context: context, text: widget.text);
        }
        if (widget.index == 3) {
          SystemNavigator.pop();
          //Navigator.of(context).pop;
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.red, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            widget.text,
            style: widget._textStyle,
          ),
        ),
      ),
    );
  }
}

class _SimpleDialog extends StatelessWidget {
  const _SimpleDialog({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text(text)),
    );
  }
}
