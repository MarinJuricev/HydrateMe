import 'package:flutter/material.dart';

class HydrateDialog extends StatelessWidget {
  final String title, buttonText;
  final Widget bodyContent;
  final Image image;
  final Function onApplyClicked;

  const HydrateDialog({
    @required this.title,
    @required this.bodyContent,
    this.onApplyClicked,
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
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 76.0,
            bottom: 12.0,
            left: 12.0,
            right: 12.0,
          ),
          margin: const EdgeInsets.only(top: 64.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16.0),
              bodyContent,
              const SizedBox(height: 24.0),
              Visibility(
                visible: onApplyClicked != null,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      onApplyClicked();
                      Navigator.of(context).pop(); // To close the dialog
                    },
                    child: Text(buttonText ?? 'Apply'),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
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
