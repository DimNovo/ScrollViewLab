//
//  ViewController.swift
//  ScrollViewLab
//
//  Created by Dmitry Novosyolov on 16/02/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollImageView: UIImageView!
    
    // MARK: - ViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollImageView.image = UIImage(named: "siv")
        scrollView.delegate = self
    }
}

// MARK: - Custom Methods
extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        guard scrollView.minimumZoomScale >= 0
            else
        {
            scrollView.minimumZoomScale = 1
            scrollView.maximumZoomScale = 5
            scrollView.clipsToBounds = true
            
            return scrollImageView
        }
        
        scrollView.maximumZoomScale = 5
        scrollView.clipsToBounds = true
        
        return scrollImageView
    }
}

