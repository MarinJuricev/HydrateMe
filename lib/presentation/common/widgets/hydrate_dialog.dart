import 'package:flutter/material.dart';

class HydrateDialog extends StatelessWidget {
  final String title, buttonText;
  final Widget bodyContent;
  final Image image;

  HydrateDialog({
    @required this.title,
    @required this.bodyContent,
    this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: Colors.transparent,
      child: buildDialog(context),
    );
  }

  Widget buildDialog(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 76.0,
            bottom: 12.0,
            left: 12.0,
            right: 12.0,
          ),
          margin: EdgeInsets.only(top: 64.0),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                'title',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              bodyContent,
              Text(
                'description',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // To close the dialog
                  },
                  child: Text(buttonText ?? 'Apply'),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 12.0,
          right: 12.0,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 64.0,
          ),
        ),
      ],
    );
  }
}
