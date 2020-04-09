package ${packageName}.common.view

import android.app.Activity
import android.widget.ImageView
import com.bumptech.glide.Glide
import androidx.swiperefreshlayout.widget.CircularProgressDrawable
import ${packageName}.R

class ImageProvider(private val mActivity: Activity) {

    // TODO: Substitute by the base url for your images
    private val IMAGES_BASE_URL = "https://your_url/img/"

    fun loadImage(image: String, target: ImageView) {
        Glide.with(mActivity)
            .load(getUriFromImage(image))
            .placeholder(getPlaceholder())
            .into(target)
    }

    private fun getUriFromImage(image: String): String { return "$IMAGES_BASE_URL$image.jpg" }

    /**
     * This method return a spinner coloured with Accent Color to be used as placeholder
     * while Glide is loading the image
     */
    private fun getPlaceholder(): CircularProgressDrawable {
        val placeholder = CircularProgressDrawable(mActivity)
        placeholder.strokeWidth = 5f
        placeholder.centerRadius = 30f
        placeholder.setColorSchemeColors(mActivity.resources.getColor(R.color.colorAccent))
        placeholder.start()
        return placeholder
    }
}