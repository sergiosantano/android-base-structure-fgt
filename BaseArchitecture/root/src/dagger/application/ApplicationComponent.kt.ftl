package ${daggerApplicationPackage}

import ${daggerPresentationPackage}.*
import dagger.Component
import javax.inject.Singleton

@Singleton
@Component(modules = [
    ApplicationModule::class,
    NetworkModule::class])
interface ApplicationComponent {

    fun newPresentationComponent(presentationModule: PresentationModule): PresentationComponent

}