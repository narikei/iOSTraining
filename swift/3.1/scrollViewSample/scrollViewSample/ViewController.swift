//
//  ViewController.swift
//  scrollViewSample
//
//  Created by なりたけいすけ on 2014/07/03.
//  Copyright (c) 2014年 narikei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var scrollView: UIScrollView! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myview = self.view
        
        self.scrollView = UIScrollView(frame: myview.frame)
        self.scrollView.delegate = self
        
        myview.addSubview(self.scrollView)
        
        var image = UIImage(named: "big_image.jpg")
        var imageView = UIImageView(image: image)
        
        self.scrollView.addSubview(imageView)
        self.scrollView.contentSize = imageView.frame.size
        self.scrollView.minimumZoomScale = 0.1
        self.scrollView.maximumZoomScale = 10.0
        self.scrollView.scrollsToTop = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        NSLog("arama-")
    }
    
    override func viewDidAppear(animated: Bool) {
        var point = CGPointMake(self.view.frame.size.width, 10)
        self.scrollView.setContentOffset(point, animated: true)
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView!) -> UIView! {
        for view: AnyObject in scrollView.subviews {
            if(view.isKindOfClass(UIImageView)) {
                return view as UIView
            }
        }
        return nil
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        NSLog("x:%f", scrollView.contentOffset.x)
        NSLog("y:%f", scrollView.contentOffset.y)
    }
}
