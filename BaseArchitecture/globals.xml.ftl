<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="gradleOut" value="." />

    <global id="apiServicePackage" value="${packageName}.common.apiservices" />
    <global id="baseViewsPackage" value="${packageName}.common.view.baseviews" />
    <global id="baseActivityPackage" value="${packageName}.common.view.activity" />
    <global id="baseViewModelPackage" value="${packageName}.common.viewmodels" />
    <global id="daggerApplicationPackage" value="${packageName}.dagger.application" />
    <global id="daggerPresentationPackage" value="${packageName}.dagger.presentation" />
</globals>
