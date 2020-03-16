<?xml version="1.0"?>
<recipe>        
    <!-- Gradle dependencies -->
    <dependency mavenUrl="com.github.bumptech.glide:glide:4.11.0"/> <!-- Glide -->
    <dependency mavenUrl="androidx.swiperefreshlayout:swiperefreshlayout:1.0.0"/> <!-- Image Placeholder used with Glide -->

    <dependency mavenUrl="com.squareup.moshi:moshi:1.8.0"/> <!-- Moshi -->
    <dependency mavenUrl="com.squareup.moshi:moshi-kotlin:1.8.0"/>

    <dependency mavenUrl="com.squareup.retrofit2:retrofit:2.5.0"/> <!-- Retrofit -->
    <dependency mavenUrl="com.squareup.retrofit2:converter-moshi:2.5.0"/>

    <dependency mavenUrl="com.google.dagger:dagger:2.22.1"/> <!-- Dagger -->
    <dependency mavenUrl="com.google.dagger:dagger-android-support:2.22.1"/>
    <dependency mavenUrl="com.google.dagger:dagger-android-processor:2.22.1" gradleConfiguration="kapt"/>
    <dependency mavenUrl="com.google.dagger:dagger-compiler:2.22.1" gradleConfiguration="kapt"/>


    <!-- Common files -->
    <instantiate from="src/app_package/common/Constants.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/Constants.kt" />
    
    <instantiate from="src/app_package/common/BaseErrors.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/BaseErrors.kt" />

    <!-- Api Services -->
    <instantiate from="src/app_package/common/apiservices/ApiRestClient.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/apiservices/ApiRestClient.kt"/>


    <!-- Base views classes -->
    <instantiate from="src/app_package/common/view/customviews/baseviews/BaseView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/customviews/baseviews/BaseView.kt" />

    <instantiate from="src/app_package/common/view/customviews/baseviews/BaseObservableView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/customviews/baseviews/BaseObservableView.kt" />

    <instantiate from="src/app_package/common/view/customviews/baseviews/ObservableViewContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/customviews/baseviews/ObservableViewContract.kt" />

    <instantiate from="src/app_package/common/view/customviews/baseviews/ViewContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/customviews/baseviews/ViewContract.kt" />

    <instantiate from="src/app_package/common/view/customviews/ViewFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/view/customviews/ViewFactory.kt" />

    <instantiate from="src/app_package/common/view/ImageProvider.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/view/ImageProvider.kt" />


    <!-- ViewModels -->
    <instantiate from="src/app_package/common/viewmodels/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/viewmodels/BaseViewModel.kt" />

    <instantiate from="src/app_package/common/viewmodels/ViewModelFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/viewmodels/ViewModelFactory.kt" />


    <!-- Dependency Injection -->
    <instantiate from="src/app_package/dagger/application/ApplicationComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/application/ApplicationComponent.kt" />

    <instantiate from="src/app_package/dagger/application/ApplicationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/application/ApplicationModule.kt" />
    
    <instantiate from="src/app_package/dagger/application/NetworkModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/application/NetworkModule.kt" />


    <instantiate from="src/app_package/dagger/presentation/PresentationComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/presentation/PresentationComponent.kt" />
    
    <instantiate from="src/app_package/dagger/presentation/PresentationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dagger/presentation/PresentationModule.kt" />

    <instantiate from="src/app_package/BaseApplication.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/BaseApplication.kt"/>

    <instantiate from="src/app_package/common/view/activity/BaseActivityContract.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/view/activity/BaseActivityContract.kt" />
    
    <instantiate from="src/app_package/common/view/activity/BaseActivity.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/common/view/activity/BaseActivity.kt" />

    <!-- Open the BaseApplication -->
    <open file="${srcOut}/BaseApplication.kt" />

</recipe>
