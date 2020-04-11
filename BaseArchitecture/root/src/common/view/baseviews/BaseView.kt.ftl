package ${baseViewsPackage}

import android.content.Context
import android.view.View
import androidx.annotation.StringRes


abstract class BaseView<DataType>: ViewContract<DataType> {

    private lateinit var mRootView: View

    override fun getRootView(): View {
        return mRootView
    }

    protected fun setRootView(rootView: View) {
        mRootView = rootView
    }

    protected fun <R: View> findViewById(id: Int): R {
        return getRootView().findViewById(id)
    }

    protected fun getContext(): Context {
        return getRootView().context
    }

    protected fun getString(@StringRes id: Int): String {
        return getContext().getString(id)
    }

}