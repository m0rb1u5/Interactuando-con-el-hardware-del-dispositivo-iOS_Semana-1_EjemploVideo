//
//  ViewController.swift
//  Interactuando-con-el-hardware-del-dispositivo-iOS_Semana-1_EjemploVideo
//
//  Created by Juan Carlos Carbajal Ipenza on 21/04/17.
//  Copyright © 2017 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    private var reproductor: AVPlayer!
    private var controlador: AVPlayerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let videoURL = Bundle.main.url(forResource: "small", withExtension: "mp4")
        self.reproductor = AVPlayer(url: videoURL!)
        self.controlador = AVPlayerViewController()
        self.controlador.player = self.reproductor
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play() {
        self.addChildViewController(self.controlador)
        self.controlador.view.frame = CGRect(x: 10, y: 20, width: 300, height: 250)
        self.view.addSubview(self.controlador.view)
        self.reproductor.play()
    }
}

