//
//  SurveyViewModel.swift
//  Training
//
//  Created by Dmitry Bakulin on 06.07.2022.
//

import Foundation

final class PlacesViewModel: ObservableObject {
    
    var title: String = "Places"
    @Published var placeChoice:String? = ""
    
    @Published private(set) var places = [
        Place(name: "Lancaster", description: "Exams are very important. Many students are studying because exams. Through exam, students can know their knowledge. It evaluates student’s skills and enables them to overcome their nerves. sdjgs';dfkl;'sdfl;'sdf',sdl,ds влаыбэдаьжуьджаыдьваьываьлэжыва ыоаывьдаы ыадлывда ыаолыважлд ыаощыва ышвджаодыэа ыаодыважд ыаюолывжад ыаоыдлжа ыаоыэа ымлэжылваэж ыалжывлэа", imageName: "charleyrivers"),
        Place(name: "Manchester", description: "One of the greatest paradoxes in American life is that while, on average, existence has gotten more comfortable over time, happiness has fallen.", imageName: "chilkoottrail"),
        Place(name: "Lake District National Park", description: "One of the greatest paradoxes in American life is that while, on average, existence has gotten more comfortable over time, happiness has fallen.", imageName: "chincoteague"),
        Place(name: "Edinburgh", description: "One of the greatest paradoxes in American life is that while, on average, existence has gotten more comfortable over time, happiness has fallen.", imageName: "hiddenlake"),
        Place(name: "Edinburgh1", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh2", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh3", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh4", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh5", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh6", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh7", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh8", description: "One of the greatest", imageName: "hiddenlake"),
        Place(name: "Edinburgh9", description: "One of the greatest", imageName: "hiddenlake")
    ]

}
