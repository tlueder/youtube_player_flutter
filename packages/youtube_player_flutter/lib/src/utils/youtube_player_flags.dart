// Copyright 2020 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Defines player flags for [YoutubePlayer].
class YoutubePlayerFlags {
  /// If set to true, hides the controls.
  ///
  /// Default is false.
  final bool hideControls;

  /// Is set to true, controls will be visible at start.
  ///
  /// Default is false.
  final bool controlsVisibleAtStart;

  /// Define whether to auto play the video after initialization or not.
  ///
  /// Default is true.
  final bool autoPlay;

  /// Mutes the player initially
  ///
  /// Default is false.
  final bool mute;

  /// if true, Live Playback controls will be shown instead of default one.
  ///
  /// Default is false.
  final bool isLive;

  /// returns true when the player should show popover ads
  ///
  /// default is false
  final bool hideAds;

  /// Hides thumbnail if true.
  ///
  /// Default is false.
  final bool hideThumbnail;

  /// Disables seeking video position when dragging horizontally.
  ///
  /// Default is false.
  final bool disableDragSeek;

  /// Enabling this causes the player to play the video again and again.
  ///
  /// Default is false.
  final bool loop;

  /// Enabling causes closed captions to be shown by default.
  ///
  /// Default is true.
  final bool enableCaption;

  /// Specifies the default language that the player will use to display captions. Set the parameter's value to an [ISO 639-1 two-letter language code](http://www.loc.gov/standards/iso639-2/php/code_list.php).
  ///
  /// Default is `en`.
  final String captionLanguage;

  /// Forces High Definition video quality when possible
  ///
  /// Default is false.
  final bool forceHD;

  /// Specifies the default starting point of the video in seconds
  ///
  /// Default is 0.
  final int startAt;

  /// Specifies the default end point of the video in seconds
  final int? endAt;

  /// Set to `true` to enable Flutter's new Hybrid Composition. The default value is `true`.
  /// Hybrid Composition is supported starting with Flutter v1.20+.
  ///
  /// **NOTE**: It is recommended to use Hybrid Composition only on Android 10+ for a release app,
  /// as it can cause framerate drops on animations in Android 9 and lower (see [Hybrid-Composition#performance](https://github.com/flutter/flutter/wiki/Hybrid-Composition#performance)).
  final bool useHybridComposition;

  /// Defines whether to show or hide the fullscreen button in the live player.
  ///
  /// Default is true.
  final bool showLiveFullscreenButton;

  /// Creates [YoutubePlayerFlags].
  const YoutubePlayerFlags({
    this.hideControls = false,
    this.controlsVisibleAtStart = false,
    this.autoPlay = true,
    this.mute = false,
    this.isLive = false,
    this.hideAds = false,
    this.hideThumbnail = false,
    this.disableDragSeek = false,
    this.enableCaption = true,
    this.captionLanguage = 'en',
    this.loop = false,
    this.forceHD = false,
    this.startAt = 0,
    this.endAt,
    this.useHybridComposition = true,
    this.showLiveFullscreenButton = true,
  });

  /// Copies new values assigned to the [YoutubePlayerFlags].
  YoutubePlayerFlags copyWith({
    bool? hideControls,
    bool? autoPlay,
    bool? mute,
    bool? showVideoProgressIndicator,
    bool? isLive,
    bool? hideAds,
    bool? hideThumbnail,
    bool? disableDragSeek,
    bool? loop,
    bool? enableCaption,
    bool? forceHD,
    String? captionLanguage,
    int? startAt,
    int? endAt,
    bool? controlsVisibleAtStart,
    bool? useHybridComposition,
    bool? showLiveFullscreenButton,
  }) {
    return YoutubePlayerFlags(
      autoPlay: autoPlay ?? this.autoPlay,
      captionLanguage: captionLanguage ?? this.captionLanguage,
      disableDragSeek: disableDragSeek ?? this.disableDragSeek,
      enableCaption: enableCaption ?? this.enableCaption,
      hideAds: hideAds ?? this.hideAds,
      hideControls: hideControls ?? this.hideControls,
      hideThumbnail: hideThumbnail ?? this.hideThumbnail,
      isLive: isLive ?? this.isLive,
      loop: loop ?? this.loop,
      mute: mute ?? this.mute,
      forceHD: forceHD ?? this.forceHD,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      controlsVisibleAtStart:
          controlsVisibleAtStart ?? this.controlsVisibleAtStart,
      useHybridComposition: useHybridComposition ?? this.useHybridComposition,
      showLiveFullscreenButton:
          showLiveFullscreenButton ?? this.showLiveFullscreenButton,
    );
  }
}
