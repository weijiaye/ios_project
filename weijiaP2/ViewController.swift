//
//  ViewController.swift
//  weijiaP2
//
//  Created by weijia ye on 2022/8/9.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UISearchBarDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "第\(component+1)组第\(row)行"
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let slider = UISlider(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        slider.maximumValue = 10
        slider.minimumValue = 0
        slider.value = 3
        slider.minimumTrackTintColor = UIColor.red
        slider.maximumTrackTintColor = UIColor.black
        slider.thumbTintColor = UIColor.yellow
        self.view.addSubview(slider)
        slider.setThumbImage(UIImage(named: "image"), for: UIControl.State())
        slider.setMaximumTrackImage(UIImage(named: "imageS"), for: UIControl.State())
        slider.setMinimumTrackImage(UIImage(named: "images"), for: UIControl.State())
        
        self.view.backgroundColor = UIColor.green
        let activity = UIActivityIndicatorView()
        activity.center = self.view.center
        activity.color = UIColor.black
        activity.startAnimating()
        self.view.addSubview(activity)
        
        let progressView = UIProgressView(progressViewStyle: UIProgressView.Style.default)
        progressView.frame = CGRect(x: 20, y: 350, width: 280, height: 10)
        progressView.progress = 0.2
        progressView.progressTintColor = UIColor.gray
        progressView.trackTintColor = UIColor.red
        self.view.addSubview(progressView)
        
        
        let stepper = UIStepper(frame: CGRect(x: 100, y: 600, width: 0, height: 0))
        stepper.tintColor = UIColor.red
        stepper.minimumValue = 0
        stepper.maximumValue = 15
        stepper.stepValue = 1
        self.view.addSubview(stepper)
        
        let pickerView = UIPickerView(frame: CGRect(x: 80, y: 120, width: 280, height: 200))
        pickerView.delegate = self
        pickerView.dataSource = self
        self.view.addSubview(pickerView)
        
        
        
        let dataPicker = UIDatePicker(frame: CGRect(x: 20, y: 500, width: 280, height: 200))
       // dataPicker.datePickerMode = UIDatePickMode.countDownTimer
        self.view.addSubview(dataPicker)
        
        let searchBar = UISearchBar(frame: CGRect(x: 20, y: 650, width: 280, height: 30))
       // searchBar.searchBarStyle = UISearchBarStyle.minimal
        self.view.addSubview(searchBar)
        searchBar.prompt = "搜索"
        searchBar.placeholder = "请输入要搜索的文字"
        searchBar.showsScopeBar = true
        searchBar.scopeButtonTitles = ["女鞋","男装","女鞋","童装"]
        searchBar.selectedScopeButtonIndex = 0
        searchBar.frame = CGRect(x: 20, y: 650, width: 280, height: 150)
        searchBar.delegate = self
        


    }
    
    public enum UISearchBarStyle:UInt{
        case prominent
        case minimal
        
    }
    
    public enum UIActivityIndicatorViewStyle:Int{
        case whiteLarge
        case white
        case gray
        
    }
    
    
    public enum UIDatePickMode:Int{
        case time
        case date
        case dateAndTime
        case countDownTimer
    }
    
        
        
        
        

    


}

