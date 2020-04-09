package ${packageName}.common.view.baseviews

interface ObservableViewContract<DataType, ListenerType> : ViewContract<DataType>{

    fun registerListener(listener: ListenerType)

    fun unregisterListener(listener: ListenerType)

}