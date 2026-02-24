import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';

class NewCartWidget extends StatefulWidget {
  const NewCartWidget({super.key, this.onPressed});

  final void Function(String value)? onPressed;

  @override
  State<NewCartWidget> createState() => _NewCartWidgetState();
}

class _NewCartWidgetState extends State<NewCartWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  bool clear = false;

  @override
  void initState() {
    super.initState();

    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onTextChanged);

    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      clear = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: TextField(
                onSubmitted: (_) {
                  widget.onPressed?.call(_textEditingController.text);
                },
                onTap: () {
                  if (_textEditingController.text.isEmpty) {
                    _textEditingController.text = DateFormat.yMMMd().format(DateTime.now());
                    _textEditingController.selection = TextSelection(
                      baseOffset: 0,
                      extentOffset: _textEditingController.value.text.length,
                    );
                  }
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: S
                      .of(context)
                      .cart_name,
                  border: InputBorder.none,
                ),
                textInputAction: TextInputAction.done,
                autocorrect: false,
              ),
            ),
            if (clear) IconButton(
              onPressed: _textEditingController.clear,
              icon: Icon(Icons.clear),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () =>
                  widget.onPressed?.call(_textEditingController.text),
            ),
          ],
        ),
      ),
    );
  }
}
