package ${baseViewsPackage}

interface ObservableViewContract<DataType, ListenerType> : ViewContract<DataType>{

    fun registerListener(listener: ListenerType)

    fun unregisterListener(listener: ListenerType)

}