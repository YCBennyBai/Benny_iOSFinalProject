//
//  frInfoViewController.swift
//  Benny_IOSFinalProject
//
//  Created by Yuechen Bai on 4/26/22.
//

import UIKit

class frInfoViewController: UIViewController {

    @IBOutlet weak var frInYearStatement: UILabel!
    
    @IBOutlet weak var frYearLabel: UILabel!
    
    @IBOutlet weak var frYearSlider: UISlider!
    
    @IBOutlet weak var frPLabel: UILabel!
    
    @IBAction func frYearChanges(_ sender: Any) {
        let frTimeStamp = [1900,1906,1913,1920,1924,1931,1932,1940,1947,1954,1959,1969,1974,1981,1995,2001]
        let frPList = ["Émile Loubet","Armand Fallières","Raymond Poincaré","Alexandre Millerand","Gaston Doumergue","Paul Doumer","Albert Lebrun","Controlled by Nazi German during WWII","Vincent Auriol","René Coty","Charles de Gaulle","Georges Pompidou","Valéry Giscard d'Estaing","François Mitterrand","Jacques Chirac"]
        
        // while loop that updates pLabel
        var frCountControl = 0
        while(frCountControl < frTimeStamp.count-1){
            if(frTimeStamp[frCountControl+1] > Int(frYearSlider.value)){
                frPLabel.text = frPList[frCountControl]
                break;
            }
            frCountControl += 1
        }
        
        // Updates usYearLabel
        frYearLabel.text = String(Int(frYearSlider.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Rotate the slider
        frYearSlider.transform = CGAffineTransform(rotationAngle: (CGFloat.pi / 2));
    }
}
