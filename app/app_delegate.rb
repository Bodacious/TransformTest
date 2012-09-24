class MyController < UIViewController
  
  def viewDidLoad
    self.view.backgroundColor =  UIColor.whiteColor
    self.view.addSubview(greyBox)
    greyBox.addSubview(whiteBox)
  end
  
  def greyBox
    @greyBox ||= begin
      _greyBox = UIView.alloc.initWithFrame([[-130,130], [310, 50]])
      _greyBox.backgroundColor = UIColor.darkGrayColor
      _greyBox.transform = CGAffineTransformMakeRotation(-Math::PI * 0.5)
      _greyBox
    end
  end
  
  def whiteBox
    @whiteBox ||= begin
      _greyBox = UIView.alloc.initWithFrame([[5,5], [40, 40]])
      _greyBox.backgroundColor = UIColor.whiteColor
      _greyBox
    end
  end
end

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @controller = MyController.new
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = @controller
    @window.makeKeyAndVisible
    true
  end
end
