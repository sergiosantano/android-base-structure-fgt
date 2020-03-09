package ${packageName}.common.view.activity

import androidx.annotation.UiThread
import androidx.appcompat.app.AppCompatActivity
import ${packageName}.BaseApplication
import ${packageName}.dagger.application.ApplicationComponent
import ${packageName}.dagger.presentation.PresentationComponent
import ${packageName}.dagger.presentation.PresentationModule

open class BaseActivity : AppCompatActivity() {

    private var mIsInjectorUsed = false

    @UiThread
    protected fun getPresentationComponent(): PresentationComponent {
        if(mIsInjectorUsed) {
            throw RuntimeException("There is no need to use injector more than once")
        }

        mIsInjectorUsed = true
        return getApplicationComponent().newPresentationComponent(
            PresentationModule(this)
        )
    }

    private fun getApplicationComponent(): ApplicationComponent {
        return (application as BaseApplication).getApplicationComponent()
    }

}