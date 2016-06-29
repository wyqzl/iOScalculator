//
//  ViewController.swift
//  iOScalculator
//
//  Created by 吴玉倩 on 16/6/22.
//  Copyright © 2016年 吴玉倩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var x: UITextField!
    var w=""
    var flag:Int=0
    var a:Double=0
    var b:Double=0
    var c:Double=0
    var fuzhi:Bool=false
    var initial:Bool=false
    var judgepoint:Bool=false
    @IBAction func one(sender: AnyObject) {
        w=w+"1"
        x.text=w
    }
    @IBAction func two(sender: AnyObject) {
        w=w+"2"
        x.text=w

    }
    @IBAction func three(sender: AnyObject) {
        w=w+"3"
        x.text=w

    }
    @IBAction func four(sender: AnyObject) {
        w=w+"4"
        x.text=w

    }
    @IBAction func five(sender: AnyObject) {
        w=w+"5"
        x.text=w

    }
    @IBAction func six(sender: AnyObject) {
        w=w+"6"
        x.text=w
    }
    @IBAction func seven(sender: AnyObject) {
        w=w+"7"
        x.text=w

    }
    @IBAction func eight(sender: AnyObject) {
        w=w+"8"
        x.text=w
    }
    @IBAction func nine(sender: AnyObject) {
        w=w+"9"
        x.text=w

    }
    @IBAction func zero(sender: AnyObject) {
        w=w+"0"
        x.text=w

    }
    @IBAction func sum(sender: AnyObject) {
        a=((x.text)! as NSString).doubleValue;
        x.text="";
        w="";
        flag=1;
        judgepoint=false;
    }
    @IBAction func jian(sender: AnyObject) {
        a=((x.text)! as NSString).doubleValue;
        x.text="";
        w="";
        flag=2;
        judgepoint=false;
    }
    @IBAction func cheng(sender: AnyObject) {
        a=((x.text)! as NSString).doubleValue;
        x.text="";
        w="";
        flag=3;
        judgepoint=false;
    }
    @IBAction func chu(sender: AnyObject) {
        a=((x.text)! as NSString).doubleValue;
        x.text="";
        w="";
        flag=4;
        judgepoint=false;

    }
    @IBAction func tuige(sender: AnyObject) {
        
        if(w != ""){
            w.removeAtIndex(w.endIndex.predecessor())
            x.text=w
           
        }
        else{
            x.text="0"
            
        }
        
    }
    @IBAction func c(sender: AnyObject) {
        
        c=0.0
        a=0.0
        b=0.0
        x.text!=""
        w=""
       // Display=""
        fuzhi=false
        initial=false
        judgepoint=false
        x.text="0"
    }
    @IBAction func dengyu(sender: AnyObject) {
        var m:Int=0;
        b=((x.text)! as NSString).doubleValue
        switch(flag)
        {
        case 1:
            c=a+b;
            if(c%1==0)
            {
               m=Int(c)
                x.text="\(m)"
            }
            else
            {
                x.text="\(c)"
            }
        
        judgepoint=true;
        break;
        case 2:
        c=a-b;
        
        if(c%1==0)
        {
            m=Int(c);
            x.text="\(m)"
        }
        else
        {
            x.text="\(c)"
        }
        judgepoint=true;
        break;
        case 3:
        c=a*b
        if(c%1==0)
        {
            m=Int(c);
            x.text="\(m)"
        }
        else
        {
            x.text="\(c)"
        }
        judgepoint=true;
        break;
        case 4:
            if(b==0)
            {
                x.text="错误"
            }
            else
            {
                c=a/b;
                if(c%1==0)
                {
                    m=Int(c);
                    x.text="\(m)"
                }
                else
                {
                    x.text="\(c)"
                }
                
            }
        judgepoint=true;
            break;
        default:
        break;

        }
        
    }
    @IBAction func dot(sender: AnyObject){ if(judgepoint==false)
    {
        w=w+"."
        x.text=w
        judgepoint=true
    }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

