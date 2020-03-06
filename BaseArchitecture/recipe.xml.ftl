<?xml version="1.0"?>
<recipe>        
    <instantiate from="src/app_package/Constants.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Constants.kt" />

    <instantiate from="src/app_package/view/customviews/baseviews/BaseView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/customviews/baseviews/BaseView.kt" />

    <instantiate from="src/app_package/view/customviews/baseviews/BaseObservableView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/customviews/baseviews/BaseObservableView.kt" />

    <instantiate from="src/app_package/view/customviews/baseviews/ObservableViewContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/customviews/baseviews/ObservableViewContract.kt" />

    <instantiate from="src/app_package/view/customviews/baseviews/ViewContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/customviews/baseviews/ViewContract.kt" />

</recipe>
