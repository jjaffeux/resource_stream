# gradle_issue

The [android-iconify](https://github.com/JoanZapata/android-iconify) code used in this project can't load its embedded .ttf file using `getResourceAsStream`:

```
 Start com.yourcompany.iconify_example/.MainActivity
 --------- beginning of main
 --------- beginning of system
 E/com/yourcompany/iconify_example( 8122): Java exception raised: java.lang.NullPointerException: Attempt to invoke virtual method 'int java.io.InputStream.available()' on a null object reference
 --------- beginning of crash
 E/AndroidRuntime( 8122): FATAL EXCEPTION: main
 E/AndroidRuntime( 8122): Process: com.yourcompany.iconify_example, PID: 8122
 E/AndroidRuntime( 8122): java.lang.RuntimeException: Unable to start activity ComponentInfo{com.yourcompany.iconify_example/com.yourcompany.iconify_example.MainActivity}: java.lang.NullPointerException: Attempt to invoke virtual method 'int java.io.InputStream.available()' on a null object reference
 E/AndroidRuntime( 8122):        at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2325)
 E/AndroidRuntime( 8122):        at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:2387)
 E/AndroidRuntime( 8122):        at android.app.ActivityThread.access$800(ActivityThread.java:151)
 E/AndroidRuntime( 8122):        at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1303)
 E/AndroidRuntime( 8122):        at android.os.Handler.dispatchMessage(Handler.java:102)
 E/AndroidRuntime( 8122):        at android.os.Looper.loop(Looper.java:135)
 E/AndroidRuntime( 8122):        at android.app.ActivityThread.main(ActivityThread.java:5254)
 E/AndroidRuntime( 8122):        at java.lang.reflect.Method.invoke(Native Method)
 E/AndroidRuntime( 8122):        at java.lang.reflect.Method.invoke(Method.java:372)
 E/AndroidRuntime( 8122):        at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:903)
 E/AndroidRuntime( 8122):        at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:698)
 E/AndroidRuntime( 8122): Caused by: java.lang.NullPointerException: Attempt to invoke virtual method 'int java.io.InputStream.available()' on a null object reference
 E/AndroidRuntime( 8122):        at com.joanzapata.android.iconify.Utils.resourceToFile(Utils.java:75)
 E/AndroidRuntime( 8122):        at com.joanzapata.android.iconify.Iconify.getTypeface(Iconify.java:80)
 E/AndroidRuntime( 8122):        at com.joanzapata.android.iconify.IconDrawable.<init>(IconDrawable.java:70)
 E/AndroidRuntime( 8122):        at com.yourcompany.iconify_example.MainActivity.onCreate(Native Method)
 E/AndroidRuntime( 8122):        at android.app.Activity.performCreate(Activity.java:5990)
 E/AndroidRuntime( 8122):        at android.app.Instrumentation.callActivityOnCreate(Instrumentation.java:1106)
 E/AndroidRuntime( 8122):        at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:2278)
 E/AndroidRuntime( 8122):        ... 10 more
```     
