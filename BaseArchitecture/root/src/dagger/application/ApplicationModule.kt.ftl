package ${daggerApplicationPackage}

import android.app.Application
import dagger.Module
import dagger.Provides
import javax.inject.Singleton

@Module
class ApplicationModule(private val mApplication : Application) {

    @Singleton
    @Provides
    fun getApplication(): Application {
        return mApplication
    }
    
}