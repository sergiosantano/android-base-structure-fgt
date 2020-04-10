package ${baseViewModelPackage}

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import java.lang.RuntimeException

class ViewModelFactory() : ViewModelProvider.NewInstanceFactory() {

    override fun <T : ViewModel?> create(modelClass: Class<T>): T {

        val viewModel: ViewModel

        when(modelClass) {
            /**
             * MyViewModel::class.java -> viewModel = MyViewModel()
             */
            
            else -> throw RuntimeException("unsopported viewmodel: $modelClass")
        }

        return viewModel as T
    }
}