//
//  ViewController.swift
//  VideoBackground
//
//  Created by 翟怀楼 on 16/9/5.
//  Copyright © 2016年 翟怀楼. All rights reserved.
//

//  使用说明
//  如果你添加视频直接拖拽过去，没有真正加入到bundle中，需要在项目设置中，Build Phases -> Copy Bundle Resources下面添加自己的数据就可以了

import UIKit

class ViewController: VideoSplashViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 按钮圆角半径
//        loginButton.layer.cornerRadius = 5
//        signupButton.layer.cornerRadius = 5
        
        setupVideoBackground()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: 配置
    func setupVideoBackground() {
        
        let videoPath = NSBundle.mainBundle().pathForResource("spotify", ofType: "mp4")
        let videoUrl = NSURL.fileURLWithPath(videoPath!)
        
        videoFrame = view.frame
        fillMode = ScalingMode.ResizeAspectFill
        alwaysRepeat = true
        sound = false
        startTime = 2.0
        alpha = 0.8
        
        contentURL = videoUrl
        view.userInteractionEnabled = false
    }


}

