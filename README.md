# File Group Template for Android Architecture
This repository contains the code and installation scripts needed for adding a new File Group Template to your Android Studio in order to automatize the creation of the basic architecture components I always use when developing Android applications. The main aspects of this arquitecure are:
* Written in Kotlin
* MVVM (Model-View-ViewModel) architectural pattern
* Usage of Android Architecture Components: ViewModel, LiveData...
* Usage of Retrofit, Moshi, Dagger2 and Glide

## Installation and usage

Clone the repository in your computer:
```bash
git clone https://github.com/sergiosantano/android-base-structure-fgt.git
```
Once it´s cloned, make sure your Android Studio is closed. Copy the `BaseArchitecture` directory into the templates path of Android Studio:

* Windows: `$ANDROID_STUDIO_PATH\plugins\android\lib\templates\other`

* MacOS: `/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/`

Launch AndroidStudio and create a new project:
* Select **Add No Activity** option
* Select **Kotlin** language
* Minimum supported API level is _API 19: Android 4.4 (KitKat)_
* Do not select _Instant apps_
* Select _androidx artifacts_

Add to the `app/build.gradle` the kapt plugin and synchronise:
```
apply plugin: 'kotlin-kapt'
```

Load the template into your project:
```
File -> New -> Other -> Base Structure
```

Once the Architecture Structure is added to the project, the `BaseApplication.java` class will be opened. Uncomment the code and **Build** for generating the Dagger classes.

The Architecture Structure is now ready for being used.
