class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    synth = AVSpeechSynthesizer.new
    words = AVSpeechUtterance.speechUtteranceWithString("Goodbye RubyMotion fans")
    words.rate = 0.25
    synth.speakUtterance(words)

    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'using_synth'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
