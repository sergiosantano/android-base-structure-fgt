package ${packageName}.common.apiservices

import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import ${packageName}.common.Constants
import retrofit2.Call
import retrofit2.Retrofit
import retrofit2.converter.moshi.MoshiConverterFactory

interface ApiRestClient {

    /**
     * Write here your methods
     */


    companion object Factory{
        fun create(): ApiRestClient {
            val moshi = Moshi.Builder()
                .add(KotlinJsonAdapterFactory())
                .build()

            val retrofit = Retrofit.Builder()
                .addConverterFactory(MoshiConverterFactory.create(moshi))
                .baseUrl(Constants.BASE_URL)
                .build()

            return retrofit.create(ApiRestClient::class.java)
        }
    }
}