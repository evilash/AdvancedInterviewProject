//
//  Animate.swift
//  AdvancedInterviewProject
//
//  Created by Matt Smith on 7/16/21.
//

import Foundation
import ImageIO

final class Animate {
    typealias CGImageFromData = (CGImage) -> Void
    
    private var stop: Bool
    let data: Data?
    
    init(data: Data? = nil) {
        self.data = data
        stop = false
    }
    
    func image(handler: @escaping CGImageFromData) -> Bool {
        guard let data = data else { return false }
        
        let status = CGAnimateImageDataWithBlock(data as CFData, nil) { [weak self] (_, cgImage, stopGIF) in
            guard let strongSelf = self else { return }
            handler(cgImage)
            stopGIF.pointee = strongSelf.stop
        }
        
        return status == noErr
    }
    
    func stopping() { stop = true }
}
