# Toast-Swift

[![CI Status](http://img.shields.io/travis/Nice/Toast-Swift.svg?style=flat)](https://travis-ci.org/Nice/Toast-Swift)
[![Version](https://img.shields.io/cocoapods/v/Toast-Swift.svg?style=flat)](http://cocoapods.org/pods/Toast-Swift)
[![License](https://img.shields.io/cocoapods/l/Toast-Swift.svg?style=flat)](http://cocoapods.org/pods/Toast-Swift)
[![Platform](https://img.shields.io/cocoapods/p/Toast-Swift.svg?style=flat)](http://cocoapods.org/pods/Toast-Swift)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### Before usage
```ruby
import Toast
```

### Basic usage
```ruby
Toast("data submit success").show(self.view)
Toast("data submit success").show(self.view, Toast.Duration.short)
Toast("data submit success").show(self.view, Toast.Duration.long)
Toast("data submit success").show(self.view, Toast.Duration.custom(5.0))
```
### More property
```ruby
let toast = Toast("data submit success")
toast.gravity = .center
toast.cornerRadius = 10
toast.duration = .long
toast.offset = CGPoint.zero
toast.margin = 30
toast.padding = 20
toast.show(self.view)
```
### Advanced usage
you can modify toast view by using(Add image to Toast):
```ruby
let toast = Toast("Success")
let imageView = UIImageView(image: UIImage(named: "success")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate))
imageView.tintColor = UIColor.white
let view = toast.view;
let label = view.subviews.last as! UILabel
view.addSubview(imageView)
imageView.snp.makeConstraints { (make) in
make.centerX.equalToSuperview()
make.top.equalToSuperview().offset(toast.padding)
make.bottom.equalTo(label.snp.top).offset(-toast.padding)
make.size.equalTo(CGSize(width: 35, height: 35))
}
label.snp.remakeConstraints { (make) in
make.left.equalToSuperview().offset(toast.padding)
make.right.equalToSuperview().offset(-toast.padding)
make.bottom.equalToSuperview().offset(-toast.padding)
}
toast.show(self.view)
```

### Customize usage
you can customize toast view by using(use your view add to Toast):
```ruby
let toast = Toast()
let custom:UIView = UIView()
let label = UILabel()
label.text = "Custom Toast"
label.textColor = UIColor.white
custom.addSubview(label)
label.snp.makeConstraints { (make) in
make.edges.equalTo(UIEdgeInsetsMake(toast.padding, toast.padding, toast.padding, toast.padding))
}
custom.backgroundColor = UIColor.black
toast.view = custom
toast.gravity = Toast.Gravity.center
toast.show(view, Toast.Duration.short)
```

## Requirements
```ruby
iOS8+
Swift 4
Xcode9+
```
## Installation

Toast is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Toast-Swift-Android-Like'
```

## Author

Nice, linaicai2012@gmail.com

## License

Toast is available under the MIT license. See the LICENSE file for more info.





