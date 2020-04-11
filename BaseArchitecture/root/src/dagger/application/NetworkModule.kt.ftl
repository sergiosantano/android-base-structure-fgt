package ${daggerApplicationPackage}

import ${apiServicePackage}.ApiRestClient
import dagger.Module
import dagger.Provides
import javax.inject.Singleton

@Module
class NetworkModule {

    @Singleton
    @Provides
    fun providesApiRestClient() : ApiRestClient {
        return ApiRestClient.create()
    }
}