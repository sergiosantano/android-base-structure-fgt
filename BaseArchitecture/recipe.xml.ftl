<?xml version="1.0"?>
<#import "root://other/BaseArchitecture/kotlin_macros.ftl" as kt>
<recipe>        
    <!-- Gradle  -->
    <@kt.addKaptDependency />

    <merge from="src/build.gradle"
            to="${escapeXmlAttribute(gradleOut)}/build.gradle" />

    <dependency mavenUrl="com.github.bumptech.glide:glide:$version_glide"/> <!-- Glide -->
    <dependency mavenUrl="androidx.swiperefreshlayout:swiperefreshlayout:$version_swiperefresh"/> <!-- Image Placeholder used with Glide -->

    <dependency mavenUrl="com.squareup.moshi:moshi:$version_moshi"/> <!-- Moshi -->
    <dependency mavenUrl="com.squareup.moshi:moshi-kotlin:$version_moshi"/>

    <dependency mavenUrl="com.squareup.retrofit2:retrofit:$version_retrofit"/> <!-- Retrofit -->
    <dependency mavenUrl="com.squareup.retrofit2:converter-moshi:$version_retrofit"/>

    <dependency mavenUrl="com.google.dagger:dagger:$version_dagger"/> <!-- Dagger -->
    <dependency mavenUrl="com.google.dagger:dagger-android-support:$version_dagger"/>
    <dependency mavenUrl="com.google.dagger:dagger-android-processor:$version_dagger" gradleConfiguration="kapt"/>
    <dependency mavenUrl="com.google.dagger:dagger-compiler:$version_dagger" gradleConfiguration="kapt"/>

    <!-- AndroidManifest -->
    <merge from="src/AndroidManifest.xml.ftl"
            to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <!-- Common files -->
    <instantiate from="src/common/Constants.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/Constants.kt" />
    
    <instantiate from="src/common/BaseErrors.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/BaseErrors.kt" />

    <!-- Api Services -->
    <instantiate from="src/common/apiservices/ApiRestClient.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/apiservices/ApiRestClient.kt"/>


    <!-- Base views classes -->
    <instantiate from="src/common/view/baseviews/BaseView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/baseviews/BaseView.kt" />

    <instantiate from="src/common/view/baseviews/BaseObservableView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/baseviews/BaseObservableView.kt" />

    <instantiate from="src/common/view/baseviews/ObservableViewContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/baseviews/ObservableViewContract.kt" />

    <instantiate from="src/common/view/baseviews/ViewContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/baseviews/ViewContract.kt" />

    <instantiate from="src/common/view/ViewFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/ViewFactory.kt" />

    <instantiate from="src/common/view/ImageProvider.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/view/ImageProvider.kt" />


    <!-- ViewModels -->
    <instantiate from="src/common/viewmodels/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/viewmodels/BaseViewModel.kt" />

    <instantiate from="src/common/viewmodels/ViewModelFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/viewmodels/ViewModelFactory.kt" />


    <!-- Dependency Injection -->
    <instantiate from="src/dagger/application/ApplicationComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/application/ApplicationComponent.kt" />

    <instantiate from="src/dagger/application/ApplicationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/application/ApplicationModule.kt" />
    
    <instantiate from="src/dagger/application/NetworkModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/application/NetworkModule.kt" />


    <instantiate from="src/dagger/presentation/PresentationComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/presentation/PresentationComponent.kt" />
    
    <instantiate from="src/dagger/presentation/PresentationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/presentation/PresentationModule.kt" />

    <instantiate from="src/BaseApplication.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/BaseApplication.kt"/>

    <instantiate from="src/common/view/activity/BaseActivityContract.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/view/activity/BaseActivityContract.kt" />
    
    <instantiate from="src/common/view/activity/BaseActivity.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/view/activity/BaseActivity.kt" />

    <!-- Open the BaseApplication -->
    <open file="${srcOut}/BaseApplication.kt" />

</recipe>
