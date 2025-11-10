require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "AndLua"

activity.setTheme(R.Theme_Blue)
activity.setTitle("IMGFlash")
activity.setContentView(loadlayout(layout))

隐藏标题栏()
沉浸状态栏()

if os.execute("su") then
  task(200,function()
    跳转界面("maint")
  end)
 else
  task(1500,function()
    --延迟之后执行的事件
    提示("未检测到Root权限")
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("该软件需要Root权限 如果你不知道什么是Root 请去酷安了解相关话题")
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end)
end