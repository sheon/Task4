//
//  ContentView.swift
//  Task4
//
//  Created by Ehsan Abdolmajidi on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    @State var message1 = " "
    @State var message2 = " "
    let image1 = UIImage.tiger
    let image2 = UIImage.snail
    var body: some View {
        
        HStack {
            VStack {
                Image(uiImage: image1).resizable().aspectRatio(contentMode: .fit)
                Button(action: {
                    let detector = ObjectDetector()
                    var outputSqueeze: SqueezeNetOutput
                    do {
                        outputSqueeze = try detector.detectObjectWithSqueeze(image: image1)
                        message1 = outputSqueeze.classLabel
                        print(outputSqueeze.classLabel)
                        print(message1)
                    } catch {
                        message1 = "error"
                    }
                }, label: {
                    Text("detect")
                })
                
                Text(message1)
            }
            .padding(.all)
            
            VStack {
                Image(uiImage: image2).resizable().aspectRatio(contentMode: .fit)
                Button(action: {
                    let detector = ObjectDetector()
                    var outputSqueeze: SqueezeNetOutput
                    do {
                        outputSqueeze = try detector.detectObjectWithSqueeze(image: image2)
                        message2 = outputSqueeze.classLabel
                        print(outputSqueeze.classLabel)
                        print(message2)
                    } catch {
                        message2 = "error"
                    }
                }, label: {
                    Text("detect")
                })
                
                Text(message2)
            }
            .padding(.all)
        }
    }
}

#Preview {
    ContentView()
}
