import UIKit

class ViewController: UIViewController {
  
    //今天日期
    @IBOutlet weak var todayLabel: UILabel!
    //上映日期
    @IBOutlet weak var ReleaseDate: UILabel!
    //倒數幾日
    @IBOutlet weak var DaysLabel: UILabel!
    //倒數幾小時
    @IBOutlet weak var HoursLabel: UILabel!
    
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //今天日期
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let todaydateString = formatter.string(from: now)
        todayLabel.text = todaydateString
        //上映日期
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        let dateString = "2021/02/11"
        let date = dateFormatter.date(from: dateString)
       ReleaseDate.text = dateString
        //倒數日期
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true)
        {
            (_) in
            let interval = Int(date!.timeIntervalSinceNow)
            let hour = interval/60/60 % 24
            let day = interval/60/60/24
            
            //倒數數字放入label
            self.DaysLabel.text = "\(day)"
            self.HoursLabel.text = "\(hour)"
        
            
        
        }
      
        
    }


}

