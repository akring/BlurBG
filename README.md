# BlurBG

当应用进入后台，或从iOS多任务中心选择APP时，为APP覆盖上毛玻璃层，保护用户隐私

Show blur layer when your app is in iOS multitask center

###Install

* 将`ImageBlur`文件夹拖入你的项目中

  Drag `ImageBlur`Folder to your project.
  
* 在`Appdelegate.h`文件中`#import "BlurBackground.h"`

  Add `#import "BlurBackground.h"`to `Appdelegate.h`.

###How to use

* 在`applicationWillResignActive`方法中,调用`addBluredBackground:(UIWindow *)window`即可添加毛玻璃层

  Call `addBluredBackground:(UIWindow *)window` method in `applicationWillResignActive` to show blur layer.
  
* 在`applicationDidBecomeActive`方法中,调用`removeBluredBackground`即可移除毛玻璃层

  Call `removeBluredBackground method in `applicationDidBecomeActive` to remove blur layer.
  
具体细节参考Demo

For more details,view the Demo code.

###Preview

![PNG](http://7te7sy.com1.z0.glb.clouddn.com/Blur_Image_PNG.png)
