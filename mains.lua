require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "main3"
import "AndLua"
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
activity.setContentView(loadlayout(main3))

隐藏标题栏()
沉浸状态栏()

--创建多级文件夹
File("/sdcard/IMGFlash/IMG/").mkdirs()
os.execute("mkdir -p /sdcard/IMGFlash/Update_img/")

function boot.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/boot_a of=/sdcard/IMGFlash/IMG/boot.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end


function dtbo.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/dtbo_a of=/sdcard/IMGFlash/IMG/dtbo.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end


function rec.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/recovery_a of=/sdcard/IMGFlash/IMG/recovery.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end


function initboot.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/init_boot_a of=/sdcard/IMGFlash/IMG/init_boot.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型
5.你的设备并非6系内核]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end


function logo.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/logo_a of=/sdcard/IMGFlash/IMG/logo.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型
5.你的设备没有Logo分区]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end


function lk.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/lk_a of=/sdcard/IMGFlash/IMG/lk.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end


function tz.onClick
  if os.execute([==[su - root -c "dd if=/dev/block/by-name/tz_a of=/sdcard/IMGFlash/IMG/tz.img"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("提取成功！文件路径：/sdcard/IMGFlash/IMG/")
    .setPositiveButton("知道了",{onClick=function(v) end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage([==[提取失败！可能的原因：
1.权限不完整
2.系统分区不可读
3.手机没有内存了
4.你的设备是非AB分区机型]==])
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end

function fanhui1.onClick
  结束程序()
end