import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';

class IconSelector extends StatefulWidget {
  IconSelector({Key? key}) : super(key: key);

  @override
  State<IconSelector> createState() => _IconSelectorState();
}

class _IconSelectorState extends State<IconSelector> {
  final TextEditingController _controller = TextEditingController();

  bool emojiShowing = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Emoji Picker Example App'),
        ),
        body: Column(
          children: [
            const Spacer(),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 50.0,
              width: 80.0,
              color: Colors.grey.withOpacity(0.2),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.none,
                style: const TextStyle(fontSize: 20.0, color: Colors.black87),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                      left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0)),
                  ),
                ),
              ),
            ),
            Offstage(
              offstage: false,
              child: SizedBox(
                  height: 250,
                  child: EmojiPicker(
                    onEmojiSelected: (category, emoji) {
                      _controller.text = emoji.emoji;
                    },
                    textEditingController: _controller,
                    config: Config(
                      columns: 7,
                      // Issue: https://github.com/flutter/flutter/issues/28894
                      emojiSizeMax: 32 *
                          (foundation.defaultTargetPlatform ==
                                  TargetPlatform.iOS
                              ? 1.30
                              : 1.0),
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.FOODS,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.white,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      replaceEmojiOnLimitExceed: false,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      loadingIndicator: const SizedBox.shrink(),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL,
                      checkPlatformCompatibility: true,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
