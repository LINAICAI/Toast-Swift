//
//  ViewController.swift
//  Toast
//
//  Created by Nice on 11/21/2017.
//  Copyright (c) 2017 Nice. All rights reserved.
//

import UIKit
import Toast_Swift_Android_Like
import SnapKit
class ViewController: UIViewController {
    @objc func addImage() -> Void {
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
    }
    @objc func custom() -> Void {
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
    }
    @objc func buttonClick() -> Void {
        let toast = Toast("数据提交成功")
        toast.gravity = Toast.Gravity.center
        toast.show(view, Toast.Duration.short)
    }
    @objc func buttonTopClick() -> Void {
        let toast = Toast.init("数据提交成功")
        toast.gravity = Toast.Gravity.top
        toast.show(view, .custom(3.0))
    }
    @objc func buttonBottomClick() -> Void {
        let toast = Toast.init("数据提交成功")
        toast.gravity = Toast.Gravity.bottom
        toast.show(view, .custom(3.0))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        
        let button:UIButton = UIButton()
        button.setTitle("从中间弹出Toast", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for:.touchUpInside)
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        
        let buttonTop:UIButton = UIButton()
        buttonTop.setTitle("从顶部弹出Toast", for: .normal)
        buttonTop.setTitleColor(UIColor.gray, for: .normal)
        buttonTop.addTarget(self, action: #selector(buttonTopClick), for:.touchUpInside)
        view.addSubview(buttonTop)
        buttonTop.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        let buttonBottom:UIButton = UIButton()
        buttonBottom.setTitle("从底部弹出Toast", for: .normal)
        buttonBottom.setTitleColor(UIColor.gray, for: .normal)
        buttonBottom.addTarget(self, action: #selector(buttonBottomClick), for:.touchUpInside)
        view.addSubview(buttonBottom)
        buttonBottom.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        

        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "自定义视图", style: .plain, target: self, action: #selector(custom))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "添加图片", style: .plain, target: self, action: #selector(addImage))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

