require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "AndLua"
import "main2"
import "java.io.File"
import "android.graphics.*"
import "android.graphics.Paint$Style"
import "android.view.animation.*"
import "android.animation.ObjectAnimator"
import "android.animation.PropertyValuesHolder"
import "android.graphics.Color"
import "android.content.Context"
import "android.provider.Settings"
import "android.graphics.PixelFormat"
import "android.graphics.Typeface"
import "android.media.AudioManager"

activity.setTheme(R.Theme_Blue)
activity.setContentView(loadlayout(main2))

隐藏标题栏()
沉浸状态栏()

控件圆角(lkm,0xFF00FF00,45)
控件圆角(tq,0xFFBAFF8A,45)
控件圆角(fh,0xFFBAFF8A,45)

function 字体(路径)--创建函数
  return Typeface.createFromFile(File(activity.getLuaDir().."/fonts/"..路径))
end

function 卡片(边框厚度,边框颜色,背景颜色,圆角度)
  import "android.graphics.drawable.GradientDrawable"
  drawable=GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setStroke(边框厚度,tonumber(边框颜色))--边框厚度和背景颜色
  drawable.setColor(tonumber(背景颜色))--背景颜色
  drawable.setCornerRadius(圆角度)--圆角
  return drawable
end

lkm.BackgroundDrawable=卡片(10,0xFFAB7DFF,0xFF00FF00,45);
tq.BackgroundDrawable=卡片(10,0xFFAB7DFF,0xFFBAFF8A,45);
fh.BackgroundDrawable=卡片(10,0xFFAB7DFF,0xFFBAFF8A,45);

view=beijing
color1 = 0xffFF8080;
color2 = 0xff8080FF;
color3 = 0xff80ffff;
color4 = 0xff80ff80;
import "android.animation.ObjectAnimator"
import "android.animation.ArgbEvaluator"
import "android.animation.ValueAnimator"
import "android.graphics.Color"
colorAnim = ObjectAnimator.ofInt(view,"backgroundColor",{color1, color2, color3,color4})
colorAnim.setDuration(25000)
colorAnim.setEvaluator(ArgbEvaluator())
colorAnim.setRepeatCount(ValueAnimator.INFINITE)
colorAnim.setRepeatMode(ValueAnimator.REVERSE)
colorAnim.start()

jh.setTypeface(字体("main.ttf"))

function tq.onClick
  跳转界面("mains")
end

function fh.onClick
  AlertDialog.Builder(this)
  .setTitle("IMGFlash")
  .setMessage("该功能为极度危险功能 会篡改设备的核心分区 极大可能会导致变砖等现象发生")
  .setPositiveButton("我已知晓",{onClick=function(v) 跳转界面("Flash") end})
  .setNeutralButton("",nil)
  .setNegativeButton("",nil)
  .show()
end

function git.onClick
  跳转界面("github")
end