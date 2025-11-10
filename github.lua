require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "guanyu"
import "AndLua"

activity.setTheme(R.Theme_Blue)
activity.setContentView(loadlayout(guanyu))

隐藏标题栏()
沉浸状态栏()

设置字体加粗(github8)

function fanhui.onClick
  结束程序()
end

function yuanma.onClick
  import "android.content.Intent"
import "android.net.Uri"
url="https://github.com/KernelJIba/IMGFlash"
viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
activity.startActivity(viewIntent)
end