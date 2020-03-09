package ${packageName}.dagger.presentation

import android.app.Activity
import android.content.Context
import android.view.LayoutInflater
import ${packageName}.common.view.ImageProvider
import ${packageName}.common.viewmodels.ViewModelFactory
import ${packageName}.common.view.customviews.ViewFactory
import dagger.Module
import dagger.Provides

@Module
class PresentationModule(private val mActivity: Activity) {

    @Provides
    fun getActivity(): Activity {
        return mActivity
    }

    @Provides
    fun context(activity: Activity): Context {
        return activity
    }

    @Provides
    fun getLayoutInflater(): LayoutInflater {
        return getActivity().layoutInflater
    }

    @Provides
    fun providesViewModelFactory(): ViewModelFactory {
        return ViewModelFactory()
    }

    @Provides
    fun providesViewFactory(layoutInflater: LayoutInflater, imageProvider: ImageProvider): ViewFactory {
        return ViewFactory(layoutInflater, imageProvider)
    }

    @Provides
    fun imageProvider(mActivity: Activity): ImageProvider {
        return ImageProvider(mActivity)
    }
}