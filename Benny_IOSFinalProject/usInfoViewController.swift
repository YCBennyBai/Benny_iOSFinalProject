//
//  infoViewController.swift
//  Benny_IOSFinalProject
//
//  Created by Yuechen Bai on 4/4/22.
//

import UIKit

class usInfoViewController: UIViewController {

    // All of the elements
    @IBOutlet weak var usInYearStatement: UILabel!
    
    @IBOutlet weak var usPStatement: UILabel!
    
    @IBOutlet weak var usVPStatement: UILabel!
    
    @IBOutlet weak var usYearLabel: UILabel!
    
    @IBOutlet weak var pLabel: UILabel!

    @IBOutlet weak var vpLabel: UILabel!
    
    @IBOutlet weak var usYearsSlider: UISlider!

    // Things that will happen after slider move
    @IBAction func usYearChanges(_ sender: Any) {
        // Declare the time stamp, list of presidents, and list of vice presidents
        let usTimeStamp = [1900,1901,1905,1909,1913,1921,1923,1925,1929,1933,1941,1945,1949,1953,1961,1963,1965,1969,1973,1974,1977,1981,1989,1993,2001]
        let pList = ["William McKinley","Theodore Roosevelt","Theodore Roosevelt","William H. Taft","Woodrow Wilson","Warren G. Harding","Calvin Coolidge","Calvin Coolidge","Herbert C. Hoover","Franklin D. Roosevelt","Franklin D. Roosevelt","Harry S. Truman","Harry S. Truman","Dwight D. Eisenhower","John F. Kennedy","Lyndon B. Johnson","Lyndon B. Johnson","Richard M. Nixon","Richard M. Nixon","Gerald R. Ford","James Earl Carter","Ronald Reagan","George Bush","William J. Clinton"]
        let vpList = ["Garret A. Hobart","N/A","Charles W. Fairbanks","James S. Sherman","Thomas R. Marshall","Calvin Coolidge","N/A","Charles G. Dawes","Charles Curtis","John N. Garner","Henry A. Wallace","N/A","Alben W. Barkley","Richard M. Nixon","Lyndon B. Johnson","Hubert H. Humphrey","Spiro T. Agnew","Gerald R. Ford","N/A","Nelson A. Rockefeller","Walter F. Mondale","George Bush","Dan Quayle","Albert Gore"]

        // while loop that updates pLabel and vpLabel
        var usCountControl = 0
        while(usCountControl < usTimeStamp.count-1){
            if(usTimeStamp[usCountControl+1] > Int(usYearsSlider.value)){
                pLabel.text = pList[usCountControl]
                vpLabel.text = vpList[usCountControl]
                break;
            }
            usCountControl += 1
        }
        
        // Updates usYearLabel
        usYearLabel.text = String(Int(usYearsSlider.value))
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Rotate the slider
        usYearsSlider.transform = CGAffineTransform(rotationAngle: (CGFloat.pi / 2));
    }
    

}
