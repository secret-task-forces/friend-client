import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:flutter/material.dart';

class VimeoLivePlayer extends StatefulWidget {
  final String liveId;
  final double? width;
  final double? height;

  const VimeoLivePlayer({
    super.key,
    required this.liveId,
    this.width,
    this.height,
  });

  @override
  State<VimeoLivePlayer> createState() => VimeoLivePlayerState();
}

class VimeoLivePlayerState extends State<VimeoLivePlayer> {
  late final String livePlayerId;

  @override
  void initState() {
    super.initState();
    livePlayerId = 'vimeo-live-player-${DateTime.now().millisecondsSinceEpoch}';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: HtmlElementView.fromTagName(
        tagName: 'div',
        onElementCreated: (Object div) {
          div as web.HTMLDivElement;
          div.style
            ..width = '100%'
            ..height = '100%'
            ..position = 'relative';

          div.innerHTML = '''
            
            <iframe src="https://vimeo.com/event/${widget.liveId}/embed/interaction" 
            frameborder="0" 
            allow="autoplay; fullscreen; picture-in-picture" 
            allowfullscreen 
            style="position:absolute;top:0;left:0;width:100%;height:100%;">
            </iframe>
          '''
              .toJS;
        },
      ),
    );
  }
}
