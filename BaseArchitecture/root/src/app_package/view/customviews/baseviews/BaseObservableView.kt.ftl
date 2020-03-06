package ${packageName}.view.customviews.baseviews

import java.util.Collections.unmodifiableSet

abstract class BaseObservableView<DataType,ListenerType> : BaseView<DataType>(), ObservableViewContract<DataType,ListenerType> {

    private val mListeners = mutableSetOf<ListenerType>()

    override fun registerListener(listener: ListenerType) {
        mListeners.add(listener)
    }

    override fun unregisterListener(listener: ListenerType) {
        mListeners.remove(listener)
    }

    fun getListeners() : Set<ListenerType> {
        return unmodifiableSet(mListeners)
    }
}