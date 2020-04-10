package ${baseActivityPackage}

import android.os.Bundle
import androidx.annotation.UiThread
import androidx.appcompat.app.AppCompatActivity
import ${packageName}.BaseApplication
import ${daggerApplicationPackage}.ApplicationComponent
import ${daggerPresentationPackage}.*

abstract class BaseActivity : AppCompatActivity(), BaseActivityContract {

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

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        initDagger()
        initViews()
        initViewModel()
    }

}