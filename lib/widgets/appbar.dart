import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rest_api/constant/constant.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({key, required this.titleText})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;
  final String titleText;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      centerTitle: false,
      title: Text(
        widget.titleText,
        style: blackHeader,
      ),
      leading: IconButton(
        onPressed: () {},
        // onPressed: widget.onPress,
        icon: const Icon(
          Icons.menu,
          color: blackColor,
          size: 20.0,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: blackColor,
                    size: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.bell,
                    color: blackColor,
                    size: 20.0,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    FontAwesomeIcons.bitcoin,
                    color: Colors.purple,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
