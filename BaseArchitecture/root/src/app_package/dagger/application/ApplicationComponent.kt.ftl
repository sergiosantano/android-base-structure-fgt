package ${packageName}.dagger.application

import ${packageName}.dagger.presentation.PresentationComponent
import ${packageName}.dagger.presentation.PresentationModule
import dagger.Component
import javax.inject.Singleton

@Singleton
@Component(modules = [
    ApplicationModule::class,
    NetworkModule::class])
interface ApplicationComponent {

    fun newPresentationComponent(presentationModule: PresentationModule): PresentationComponent

}