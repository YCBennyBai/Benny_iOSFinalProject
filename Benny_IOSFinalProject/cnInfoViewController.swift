//
//  cnInfoViewController.swift
//  Benny_IOSFinalProject
//
//  Created by Yuechen Bai on 4/7/22.
//

import UIKit

class cnInfoViewController: UIViewController {
    @IBOutlet weak var cnInYearStatement: UILabel!
    
    @IBOutlet weak var cnYearLabel: UILabel!
    
    @IBOutlet weak var cnYearSlider: UISlider!
    
    @IBOutlet weak var cnLeaderLabel: UILabel!
    
    @IBOutlet weak var cnCountryNameLabel: UILabel!
    
    @IBAction func cnYearChanges(_ sender: Any) {
        let cnTimeStamp = [1900,1908,1912,1916,1917,1918,1923,1928,1931,1943,1948,1949,1958,1967,1974,1980,1981,1982,1988,1992,2001]
        let cnPList = ["Emperor Guangxu", "Emperor Xuantong","Yuan Shikai","Li Yuanhong","Feng Guozhang","Xu Shichang", "11 different leaders take seat from 1922 to 1928","Chiang Kai-shek","Lin Sen","Chiang Kai-shek","Li Zongren","Mao Zedong","Liu Shaoqi","Dong Biwu","N/A","Deng Xiaoping","N/A","Li Xiannian","Yang Shangkun","Jiang Zemin"]
        
        if(Int(cnYearSlider.value) < 1912){
            cnCountryNameLabel.text = "The Emperor of Qing Dynasty is..."
        }
        else if(Int(cnYearSlider.value) < 1948){
            cnCountryNameLabel.text = "The president of Republic of China is..."
        }
        else{
            cnCountryNameLabel.text = "The president of People's Republic of China is..."
        }
        
        var cnCountControl = 0
        while(cnCountControl < cnTimeStamp.count-1){
            if(cnTimeStamp[cnCountControl+1] > Int(cnYearSlider.value)){
                cnLeaderLabel.text = cnPList[cnCountControl]
                break;
            }
            cnCountControl += 1
        }
        cnYearLabel.text = String(Int(round(cnYearSlider.value)));
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cnYearSlider.transform = CGAffineTransform(rotationAngle: (CGFloat.pi / 2));
    }

}
