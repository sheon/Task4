//
//  ObjectDetector.swift
//  Task4
//
//  Created by Ehsan Abdolmajidi on 2023-10-30.
//

import Foundation
import UIKit
import Vision

class ObjectDetector {
    
    func detectObjectWithSqueeze(image: UIImage) throws -> SqueezeNetOutput {
        
        let defaultConfig = MLModelConfiguration()
        
        // Create an instance of the image classifier's wrapper class.
        let imageClassifierWrapper = try? SqueezeNet(configuration: defaultConfig)
        let theimage = image.cgImage!
        
                
        return try imageClassifierWrapper!.prediction(input: SqueezeNetInput(imageWith: theimage))
    
    }
   
    
}
