//
//  imageAPICall.swift
//  CustomeTabBar
//
//  Created by Shivakumar Harijan on 11/06/24.
//

//import Foundation
//import UIKit
//import Foundation
//import Alamofire
//
//// Define the image and some parameters
//let image = UIImage(named: "yourImageName")!
//let parameters = ["description": "This is a cool image"]
//
//// Function to generate a random filename
//func getFileName() -> String {
//  let randomString = UUID().uuidString.prefix(8)
//  return "image_\(randomString).jpg"
//}
//
//// Upload function using Alamofire
//func uploadImage(to urlString: String, completion: @escaping (Bool, String?) -> Void) {
//  guard let imageData = image.jpegData(compressionQuality: 0.75) else {
//    completion(false, "Failed to convert image to data")
//    return
//  }
//  
//  AF.upload(multipartFormData: { multipartFormData in
//    multipartFormData.append(imageData, withName: "image", fileName: getFileName(), mimeType: "image/jpeg")
//    for (key, value) in parameters {
//      multipartFormData.append(value.data(using: .utf8)!, withName: key)
//    }
//  }, to: urlString, method: .post)
//    responseJSON { response in
//      if let error = response.result.error {
//        // Handle error here
//        print("Error during response processing:", error)
//        return // Exit the closure early if there's an error
//      }
//      
//      guard let data = response.data else {
//        print("Failed to get response data")
//        return // Exit the closure if no data
//      }
//      
//      // Parse the JSON data here
//      do {
//        let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
//        // Handle successful JSON data here (e.g., cast to desired type)
//      } catch {
//        print("Error parsing JSON response:", error)
//      }
//    }
//}

// Example usage
//let urlString = "https://your-api-endpoint.com/upload"
//uploadImage(to: urlString) { success, message in
//  if success {
//    print("Image uploaded successfully!")
//  } else {
//    print("Error uploading image:", message!)
//  }
//}
