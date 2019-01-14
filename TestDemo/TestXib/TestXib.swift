//
//  TestXib.swift
//  TestDemo
//
//  Created by 刘在希 on 2018/12/23.
//  Copyright © 2018 刘在希. All rights reserved.
//

import UIKit

class TestXib: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initFromXIB()
        awakeFromNib()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let firstView = UIView.init(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        firstView.tag = 1
        firstView.backgroundColor = UIColor.green
        self.addSubview(firstView)
        
    }
    
    func  anid(){
        let uiview = self.viewWithTag(1)
        uiview?.backgroundColor = UIColor.red
        
        self.addSubview(uiview!)
        if self.subviews.isEmpty {
            print("数组为空")
        }else{
            for uiview in self.subviews{
                print("tag值\(uiview.tag)")
            }
        }
    }
   
    func initFromXIB() {
        let bundle = Bundle(for: TestXib.self)
        let nib = UINib(nibName: String(describing: TestXib.self), bundle: bundle)
        //正常解包，如果有值，就是用非可选临时常量执行，为nil则不执行
        if let instanceView = nib.instantiate(withOwner: self, options: nil)[0] as?UIView{
            self.addSubview(instanceView)
            instanceView.frame = self.bounds
        }
    }
}
