package ${packageName}.view.customviews.baseviews

import android.view.View

interface ViewContract<DataType> {

    fun getRootView(): View

    fun bindViews()

    fun bindData(data: DataType)
    
}
