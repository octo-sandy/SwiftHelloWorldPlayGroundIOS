//
//  ViewController.swift
//  SwiftHelloWorldPlayGroundIOS
//
//  Created by tommyZZM on 2017/5/21.
//  Copyright © 2017年 tommyZZM. All rights reserved.
//

import UIKit
import GLKit

class ViewController: GLKViewController {

    var glkView: GLKView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        glkView = self.view as! GLKView
        glkView.context = EAGLContext(api: .openGLES2)

        print("hello world ...")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func glkView(_ view: GLKView, drawIn rect: CGRect) {
        glClearColor(1.0, 0.0, 0.0, 1.0)

        // GLbitfield is typealias of UInt32
        glClear(GLbitfield(GL_COLOR_BUFFER_BIT))
    }

}

