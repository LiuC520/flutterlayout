// Copyright 2017, the Flutter project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

package com.example.first;

import android.os.Bundle;

import io.flutter.plugins.GeneratedPluginRegistrant;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {
  private static final String CHANNEL = "samples.flutter.io/platform_view";
  private static final String METHOD_SWITCH_VIEW = "switchView";
  private static final int COUNT_REQUEST = 1;

  private MethodChannel.Result result;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
  }
}
