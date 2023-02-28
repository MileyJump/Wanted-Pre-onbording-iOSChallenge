//
//  ViewController.swift
//  Wanted-Pre-onbording-Challenge
//
//  Created by 최민경 on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // 구글드라이브에 업로드한 이미지 다운로드 URL
    
        
        
    @IBOutlet weak var uiImageView1: UIImageView!
    
    
    @IBOutlet weak var uiImageView2: UIImageView!
    
    
    @IBOutlet weak var uiImageView3: UIImageView!
    
    @IBOutlet weak var uiImageView4: UIImageView!
    
    @IBOutlet weak var uiImageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiImageView1.image = #imageLiteral(resourceName: "dog-g443c47082_1280 (4)")
        uiImageView2.image = #imageLiteral(resourceName: "dog-gde736fc6d_1280 (1)")
        uiImageView3.image = #imageLiteral(resourceName: "dog-gf67082584_1280 (1)")
        uiImageView4.image = #imageLiteral(resourceName: "pomeranian-ge3040fdfc_1280 (1)")
        uiImageView5.image = #imageLiteral(resourceName: "puppy-g0af19d0a0_1280 (1)")
    }
    
    
    @IBAction func button1(_ sender: Any) {
        imageindex = 0
        uiImageView1.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView1)
    
    }

    @IBAction func button2(_ sender: Any) {
        imageindex = 1
        uiImageView2.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView2)
    }
    
    @IBAction func button3(_ sender: Any) {
        imageindex = 2
        uiImageView3.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView3)
    }
    
    @IBAction func button4(_ sender: Any) {
        imageindex = 3
        uiImageView4.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView4)
    }
    
    @IBAction func button5(_ sender: Any) {
        imageindex = 4
        uiImageView5.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView5)
    }
    
    
    @IBAction func allLoadImagesbutton(_ sender: Any) {
        imageindex = 0
        uiImageView1.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView1)
        
        imageindex = 1
        uiImageView2.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView2)
        
        imageindex = 2
        uiImageView3.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView3)
        
        imageindex = 3
        uiImageView4.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView4)
        
        imageindex = 4
        uiImageView5.image = UIImage(systemName: "photo.fill")
        imageDownload(imageView: uiImageView5)
    }
    
    
    }



var imageindex = 0
    
    
    
let googleDriveImageURL = [
    "https://drive.google.com/uc?export=download&id=11B5f5exhaFYtwoBNNua_3iB5KB1m5sdm",
"https://drive.google.com/uc?export=download&id=1nmmwk-cYOchEKcQa8RmCI3f-dG-5hC2Z",
"https://drive.google.com/uc?export=download&id=178EPAFe23m3nbDaOTPEuQ-gCTmt5CiHX",
    "https://drive.google.com/uc?export=download&id=1A4ZbTt0373q93O4915GsHMowqv8hrM6u",
    "https://drive.google.com/uc?export=download&id=1ifGI2cmLhTEMWdBZvW_ns9LDe9wHUbA7"
]

    
    
    
    func imageDownload(imageView: UIImageView) {
        
        
        
        let strcutURL = URL(string: googleDriveImageURL[imageindex])!
        
        URLSession.shared.dataTask(with: strcutURL) { data, response, error in
            
            //에러 확인
            if  error != nil {
                print("에러가 발생했습니다. \(error!)")
                return
            }
            
            guard let savedata = data else{
                print("데이터를 받아오지 못 했습니다")
                return
            }
            
            let image = UIImage(data: savedata)
            
            DispatchQueue.main.async() {
                print("이미지 다운로드")
                imageView.image = image
            }
    
            
        }.resume()
        
    }


    
    
    


