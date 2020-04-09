package ${packageName}.common.view.baseviews

import android.view.View

interface ViewContract<DataType> {

    fun getRootView(): View

    fun bindViews()

    fun bindData(data: DataType)
    
}
