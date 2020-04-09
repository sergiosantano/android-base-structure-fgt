package ${packageName}.common.viewmodels

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import ${packageName}.common.BaseErrors

abstract class BaseViewModel : ViewModel() {

    protected val _dataLoading = MutableLiveData<Boolean>()
    val dataLoading: LiveData<Boolean>
        get() = _dataLoading

    protected val _error = MutableLiveData<BaseErrors>().apply { value = null }
    val error: LiveData<BaseErrors>
        get() = _error
        
}