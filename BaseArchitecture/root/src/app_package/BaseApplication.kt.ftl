package ${packageName}

import android.app.Application
import ${packageName}.dagger.application.*

class BaseApplication: Application() {

    private var mApplicationComponent: ApplicationComponent? = null

    override fun onCreate() {
        super.onCreate()

        /** TODO: Uncomment this after compiling for generating the Dagger classes
        mApplicationComponent = DaggerApplicationComponent.builder()
            .applicationModule(ApplicationModule(this))
            .networkModule(NetworkModule())
            .build()
        */
    }

    fun getApplicationComponent(): ApplicationComponent {
        return mApplicationComponent!!
    }
}