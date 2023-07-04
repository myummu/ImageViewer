//
//  ViewController.swift
//  ImageViewer
//
//  Created by Clairaudience on 2023/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    var maxImage = 6
    var numImage = 1

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnPrevImage: UIButton!
    @IBOutlet var btnNextImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "1.png")
    }

    @IBAction func btnPrevImage(_ sender: UIButton) {
        
        numImage = numImage - 1 // 이전 버튼을 누르면 1씩 감소
        
        if(numImage < 1){ // 현재 이미지가 1보다 작으면 끝이미지가 보이도록
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png" // 결과적으로 보여줘야하는 이미지 이름
        imgView.image = UIImage(named: imageName) // imgView에 이미지가 보일 수 있도록
    }
    
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        
        numImage = numImage + 1
        
        if(numImage > maxImage){ // 현재 이미지가 마지막 이미지보다 크면 첫이미지가 보이도록
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}

