require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "flashing"
import "AndLua"

activity.setTheme(R.Theme_Blue)
activity.setContentView(loadlayout(flashing))

隐藏标题栏()
沉浸状态栏()

os.execute("mkdir -p /sdcard/IMGFlash/Update_img/")

function fboot.onClick
  if os.execute([==[su - root -c "dd if=/sdcard/IMGFlash/Update_img/new.img of=/dev/block/by-name/boot_a bs=1M"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入成功！是否重启？")
    .setPositiveButton("重启",{onClick=function(v) os.execute([==[su - root -c "reboot"]==])end})
    .setNeutralButton("不重启",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入失败！")
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end

function fdtbo.onClick
  if os.execute([==[su - root -c "dd if=/sdcard/IMGFlash/Update_img/new.img of=/dev/block/by-name/dtbo_a bs=1M"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入成功！是否重启？")
    .setPositiveButton("重启",{onClick=function(v) os.execute([==[su - root -c "reboot"]==])end})
    .setNeutralButton("不重启",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入失败！")
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end

function finitboot.onClick
  if os.execute([==[su - root -c "dd if=/sdcard/IMGFlash/Update_img/new.img of=/dev/block/by-name/init_boot_a bs=1M"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入成功！是否重启？")
    .setPositiveButton("重启",{onClick=function(v) os.execute([==[su - root -c "reboot"]==])end})
    .setNeutralButton("不重启",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入失败！")
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end

function frec.onClick
  if os.execute([==[su - root -c "dd if=/sdcard/IMGFlash/Update_img/new.img of=/dev/block/by-name/recovery_a bs=1M"]==]) then
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入成功！是否重启？")
    .setPositiveButton("重启",{onClick=function(v) os.execute([==[su - root -c "reboot"]==])end})
    .setNeutralButton("不重启",nil)
    .setNegativeButton("",nil)
    .show()
   else
    AlertDialog.Builder(this)
    .setTitle("IMGFlash")
    .setMessage("分区刷入失败！")
    .setPositiveButton("退出",{onClick=function(v) 结束程序()end})
    .setNeutralButton("",nil)
    .setNegativeButton("",nil)
    .show()
  end
end

function flashjc.onClick
  AlertDialog.Builder(this)
  .setTitle("IMGFlash")
  .setMessage("将你需要刷入的镜像文件放在/sdcard/IMGFlash/Update_img/内即可 一次只能放一个！")
  .setPositiveButton("知道了",{onClick=function(v) end})
  .setNeutralButton("",nil)
  .setNegativeButton("",nil)
  .show()
end

function fanhui2.onClick
  结束程序()
end