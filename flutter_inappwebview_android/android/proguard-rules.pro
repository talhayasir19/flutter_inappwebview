# WebView
-keepattributes *JavascriptInterface*
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, java.lang.String, android.graphics.Bitmap);
    public boolean *(android.webkit.WebView, java.lang.String);
    public void *(android.webkit.webView, jav.lang.String);
}
-keepclassmembers class com.pichillilorenzo.flutter_inappwebview_android$JavaScriptBridgeInterface {
     <fields>;
     <methods>;
     public *;
     private *;
}
-keep class com.pichillilorenzo.flutter_inappwebview_android.** { *; }

-dontwarn android.window.BackEvent
# Ignore all methods referencing BackEvent
-dontwarn android.window.**
-dontnote android.window.**

# Keep Flutter embedding but strip methods that reference BackEvent
-assumenosideeffects class io.flutter.embedding.android.FlutterActivity {
    public void startBackGesture(android.window.BackEvent);
    public void dispatchBackGesture(android.window.BackEvent);
}
