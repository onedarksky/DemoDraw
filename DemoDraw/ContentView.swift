
import SwiftUI
import UIKit
import CoreGraphics
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        //頭髮
        let hair = UIBezierPath()
                
        hair.move(to: CGPoint(x: 40, y: 108))
        
        hair.addQuadCurve(to: CGPoint(x: 75, y: 58),
             controlPoint: CGPoint(x: 44, y: 70))
        
        hair.addQuadCurve(to: CGPoint(x: 148, y:68),
             controlPoint: CGPoint(x: 114, y: 46))
        
        hair.addQuadCurve(to: CGPoint(x: 167, y:102),
             controlPoint: CGPoint(x: 165, y: 81))
        
        hair.addQuadCurve(to: CGPoint(x: 165, y:143),
             controlPoint: CGPoint(x: 170, y: 116))
        
        hair.addQuadCurve(to: CGPoint(x: 143, y:164),
             controlPoint: CGPoint(x: 157, y: 155))
        
        hair.addQuadCurve(to: CGPoint(x: 148, y:141),
             controlPoint: CGPoint(x: 151, y: 152))
        
        hair.addQuadCurve(to: CGPoint(x: 148, y:122),
             controlPoint: CGPoint(x: 150, y: 125))
        
        hair.addQuadCurve(to: CGPoint(x: 135, y:90),
             controlPoint: CGPoint(x: 150, y: 105))
        
        hair.addQuadCurve(to: CGPoint(x: 110, y:72),
             controlPoint: CGPoint(x: 130, y: 80))
        
        hair.addQuadCurve(to: CGPoint(x: 75, y:71),
             controlPoint: CGPoint(x: 100, y: 65))
        
        hair.addQuadCurve(to: CGPoint(x: 40, y:108),
             controlPoint: CGPoint(x: 58, y: 71))
        
    
        //頭髮顏色
        let hairColor = CAShapeLayer()
                
        hairColor.path = hair.cgPath
        
        hairColor.lineWidth = 1.5
        
        hairColor.strokeColor = UIColor.black.cgColor
        
        hairColor.fillColor = UIColor(red: 29/255, green: 16/255, blue: 13/255, alpha: 1).cgColor
                view.layer.addSublayer(hairColor)
        
        //頭髮圓球
        let aDegree = CGFloat.pi * 2
                let hair2 = UIBezierPath(arcCenter: CGPoint(x: 159, y: 158), radius: 18, startAngle: aDegree * 0, endAngle: aDegree * 180, clockwise: true)
                
                let layer = CAShapeLayer()
                layer.path = hair2.cgPath
                layer.fillColor = UIColor(red: 29/255, green: 16/255, blue: 13/255, alpha: 1).cgColor
                view.layer.addSublayer(layer)
        
        
        //臉
        let face = UIBezierPath()
                
        face.move(to: CGPoint(x: 41, y: 105))
        
        face.addQuadCurve(to: CGPoint(x: 72, y: 72),
             controlPoint: CGPoint(x: 50, y: 79))
        
        face.addQuadCurve(to: CGPoint(x: 100, y: 69),
             controlPoint: CGPoint(x: 96, y: 66))
        
        face.addQuadCurve(to: CGPoint(x: 126, y: 80),
             controlPoint: CGPoint(x: 119, y: 71))
        
        face.addQuadCurve(to: CGPoint(x: 148, y: 122),
             controlPoint: CGPoint(x: 150, y: 104))
        
        face.addQuadCurve(to: CGPoint(x: 147, y: 154),
             controlPoint: CGPoint(x: 152, y: 132))
        
        face.addQuadCurve(to: CGPoint(x: 126, y: 180),
             controlPoint: CGPoint(x: 139, y: 171))
        
        
        face.addQuadCurve(to: CGPoint(x: 106, y: 188),
             controlPoint: CGPoint(x: 112, y: 188))
        
        face.addQuadCurve(to: CGPoint(x: 66, y: 182),
             controlPoint: CGPoint(x: 80, y: 190))
        
        face.addQuadCurve(to: CGPoint(x: 44, y: 154),
             controlPoint: CGPoint(x: 50, y: 172))
        
        face.addQuadCurve(to: CGPoint(x: 41, y: 105),
             controlPoint: CGPoint(x: 38, y: 146))
        
        face.close()
        
        //臉顏色
        let faceColor = CAShapeLayer()
                
        faceColor.path = face.cgPath
        
        faceColor.lineWidth = 1.5
        
        faceColor.strokeColor = UIColor.black.cgColor
        
        faceColor.fillColor = UIColor(red: 253/255, green: 205/255, blue: 183/255, alpha: 1).cgColor
                view.layer.addSublayer(faceColor)
        
        
        
        
        //頭髮線
        let hairline = UIBezierPath()
                
        hairline.move(to: CGPoint(x: 77, y: 58))
        hairline.addLine(to: CGPoint(x: 75, y: 73))
        hairline.close()
        
        let hairlineColor = CAShapeLayer()
                
        hairlineColor.path = hairline.cgPath
        
        hairlineColor.lineWidth = 1.5
        
        hairlineColor.strokeColor = UIColor(red: 251/255, green: 215/255, blue: 97/255, alpha: 1).cgColor
        
        hairlineColor.fillColor = UIColor.clear.cgColor
                view.layer.addSublayer(hairlineColor)
        
        
        
        
        //裝飾品
        let accessory = UIBezierPath()
                
        accessory.move(to: CGPoint(x: 148, y: 68))
        
        accessory.addQuadCurve(to: CGPoint(x: 160, y: 67),
             controlPoint: CGPoint(x: 153, y: 57))
        
        accessory.addQuadCurve(to: CGPoint(x: 158, y: 77),
             controlPoint: CGPoint(x: 163, y: 70))
        
        accessory.addQuadCurve(to: CGPoint(x: 168, y: 80),
             controlPoint: CGPoint(x: 165, y: 71))
        
        accessory.addQuadCurve(to: CGPoint(x: 158, y: 88),
             controlPoint: CGPoint(x: 170, y: 85))
        
        accessory.addQuadCurve(to: CGPoint(x: 168, y: 96),
             controlPoint: CGPoint(x: 171, y: 85))
        
        accessory.addQuadCurve(to: CGPoint(x: 159, y: 101),
             controlPoint: CGPoint(x: 165, y: 102))
        
        accessory.addQuadCurve(to: CGPoint(x: 148, y: 90),
             controlPoint: CGPoint(x: 150, y: 95))
        
        accessory.addQuadCurve(to: CGPoint(x: 148, y: 68),
             controlPoint: CGPoint(x: 145, y: 78))
        
        //裝飾品顏色
        let accessoryColor = CAShapeLayer()
                
        accessoryColor.path = accessory.cgPath
        
        accessoryColor.lineWidth = 1.5
        
        accessoryColor.strokeColor = UIColor.black.cgColor
        
        accessoryColor.fillColor = UIColor(red: 223/255, green: 42/255, blue: 82/255, alpha: 1).cgColor
                view.layer.addSublayer(accessoryColor)
        
        //右眉毛
        
        let Eyebrow = UIBezierPath()
                
        Eyebrow.move(to: CGPoint(x: 84, y: 89))
        
        Eyebrow.addQuadCurve(to: CGPoint(x: 92, y: 84),
             controlPoint: CGPoint(x: 87, y: 85))
        
        Eyebrow.addQuadCurve(to: CGPoint(x: 102, y: 86),
             controlPoint: CGPoint(x: 93, y: 83))
        
        Eyebrow.addQuadCurve(to: CGPoint(x: 92, y: 81),
             controlPoint: CGPoint(x: 95, y: 80))
        
        Eyebrow.addQuadCurve(to: CGPoint(x: 84, y: 89),
             controlPoint: CGPoint(x: 84, y: 80))
        Eyebrow.close()
        let EyebrowColor = CAShapeLayer()
                
        EyebrowColor.path = Eyebrow.cgPath
        
        EyebrowColor.lineWidth = 1.5
        
        EyebrowColor.strokeColor = UIColor(red: 150/255, green: 130/255, blue: 123/255, alpha: 1).cgColor
        
        EyebrowColor.fillColor = UIColor(red: 150/255, green: 130/255, blue: 123/255, alpha: 1).cgColor
                view.layer.addSublayer(EyebrowColor)
        
        
        
        
        
        //右眉毛
        
        let Eyebrow2 = UIBezierPath()
                
        Eyebrow2.move(to: CGPoint(x: 59, y: 91))
        
        Eyebrow2.addQuadCurve(to: CGPoint(x: 51, y: 86),
             controlPoint: CGPoint(x: 55, y: 85))
        
        Eyebrow2.addQuadCurve(to: CGPoint(x: 61, y: 86),
             controlPoint: CGPoint(x: 58, y: 78))
        
        Eyebrow2.addQuadCurve(to: CGPoint(x: 59, y: 91),
             controlPoint: CGPoint(x: 61, y: 88))
        
        let EyebrowColor2 = CAShapeLayer()
                
        EyebrowColor2.path = Eyebrow2.cgPath
        
        EyebrowColor2.lineWidth = 1.5
        
        EyebrowColor2.strokeColor = UIColor(red: 150/255, green: 130/255, blue: 123/255, alpha: 1).cgColor
        
        EyebrowColor2.fillColor = UIColor(red: 150/255, green: 130/255, blue: 123/255, alpha: 1).cgColor
                view.layer.addSublayer(EyebrowColor2)
        
        
        //右眼睛
        let Eye = UIBezierPath()
                
        Eye.move(to: CGPoint(x: 83, y: 114))
        
        Eye.addQuadCurve(to: CGPoint(x: 108, y: 112),
             controlPoint: CGPoint(x: 95, y: 103))
        
        Eye.addQuadCurve(to: CGPoint(x: 90, y: 101),
             controlPoint: CGPoint(x: 100, y: 99))
        
        Eye.addQuadCurve(to: CGPoint(x: 82, y: 109),
             controlPoint: CGPoint(x: 83, y: 104))
        
        Eye.addQuadCurve(to: CGPoint(x: 83, y: 114),
             controlPoint: CGPoint(x: 79, y: 113))
        Eye.close()
        
        
        
        let EyeColor = CAShapeLayer()
                
        EyeColor.path = Eye.cgPath
        
        EyeColor.lineWidth = 1
        
        EyeColor.strokeColor = UIColor.black.cgColor
        
        EyeColor.fillColor = UIColor.white.cgColor
                view.layer.addSublayer(EyeColor)
        
        //左眼睛
        
        let Eye2 = UIBezierPath()
                
        Eye2.move(to: CGPoint(x: 45, y: 108))
        
        Eye2.addQuadCurve(to: CGPoint(x: 56, y: 103),
             controlPoint: CGPoint(x: 50, y: 101))
        
        Eye2.addQuadCurve(to: CGPoint(x: 59, y: 111),
             controlPoint: CGPoint(x: 60, y: 107))
        
        Eye2.addQuadCurve(to: CGPoint(x: 45, y: 108),
             controlPoint: CGPoint(x: 53, y: 105))
    
        
        let Eye2Color = CAShapeLayer()
                
        Eye2Color.path = Eye2.cgPath
        
        Eye2Color.lineWidth = 1
        
        Eye2Color.strokeColor = UIColor.black.cgColor
        
        Eye2Color.fillColor = UIColor.white.cgColor
                view.layer.addSublayer(Eye2Color)
        
        
        
        //臉頰圓點
        
        let aDegree2 = CGFloat.pi * 2
                let face2 = UIBezierPath(arcCenter: CGPoint(x: 111, y: 128), radius: 9, startAngle: aDegree2 * 0, endAngle: aDegree2 * 180, clockwise: true)
                
                let layer2 = CAShapeLayer()
                layer2.path = face2.cgPath
        
        layer2.fillColor = UIColor(red: 236/255, green: 2/255, blue: 91/255, alpha: 1).cgColor
                view.layer.addSublayer(layer2)
        
        
        //臉頰圓點2
        
        let face3 = UIBezierPath()
                
        face3.move(to: CGPoint(x: 44, y: 122))
        
        face3.addQuadCurve(to: CGPoint(x: 44, y: 134),
             controlPoint: CGPoint(x: 49, y: 128))
        
        face3.addQuadCurve(to: CGPoint(x: 44, y: 122),
             controlPoint: CGPoint(x: 39, y: 129))
    
        
        let face3Color = CAShapeLayer()
                
        face3Color.path = face3.cgPath
        
        face3Color.lineWidth = 1
        
        face3Color.strokeColor = UIColor(red: 236/255, green: 2/255, blue: 91/255, alpha: 1).cgColor
        
        face3Color.fillColor = UIColor(red: 236/255, green: 2/255, blue: 91/255, alpha: 1).cgColor
                view.layer.addSublayer(face3Color)
        
        
        
        //鼻子
        
        let aDegree3 = CGFloat.pi * 2
                let nose = UIBezierPath(arcCenter: CGPoint(x: 75, y: 130), radius: 4, startAngle: aDegree3 * 0, endAngle: aDegree3 * 180, clockwise: true)
                
                let layer3 = CAShapeLayer()
                layer3.path = nose.cgPath
        
        layer3.fillColor = UIColor.black.cgColor
                view.layer.addSublayer(layer3)
        
        //鼻子2
        
        let nose2 = UIBezierPath()
                
        nose2.move(to: CGPoint(x: 64, y: 126))
        
        nose2.addQuadCurve(to: CGPoint(x: 63, y: 133),
             controlPoint: CGPoint(x: 69, y: 130))
        
        nose2.addQuadCurve(to: CGPoint(x: 64, y: 126),
             controlPoint: CGPoint(x: 59, y: 129))
    
        
        let nose2Color = CAShapeLayer()
                
        nose2Color.path = nose2.cgPath
        
        nose2Color.lineWidth = 1
        
        nose2Color.strokeColor = UIColor.black.cgColor
        
        nose2Color.fillColor = UIColor.black.cgColor
                view.layer.addSublayer(nose2Color)
        
        
        
        
        //眼球
        let aDegree4 = CGFloat.pi * 2
                let eyes = UIBezierPath(arcCenter: CGPoint(x: 96, y: 105), radius: 3, startAngle: aDegree4 * 0, endAngle: aDegree4 * 180, clockwise: true)
                
                let layer4 = CAShapeLayer()
                layer4.path = eyes.cgPath
        
        layer4.fillColor = UIColor.black.cgColor
                view.layer.addSublayer(layer4)
        
        //眼球2
        
        let aDegree5 = CGFloat.pi * 2
                let eyes2 = UIBezierPath(arcCenter: CGPoint(x: 55, y: 105), radius: 2, startAngle: aDegree5 * 0, endAngle: aDegree5 * 180, clockwise: true)
                
                let layer5 = CAShapeLayer()
                layer5.path = eyes2.cgPath
        
        layer5.fillColor = UIColor.black.cgColor
                view.layer.addSublayer(layer5)
        
        //耳朵
        
        let aDegree6 = CGFloat.pi * 2
                let ear = UIBezierPath(arcCenter: CGPoint(x: 149, y: 130), radius: 10, startAngle: aDegree6 * 0, endAngle: aDegree6 * 180, clockwise: true)
                
                let layer6 = CAShapeLayer()
                layer6.path = ear.cgPath
        
        layer6.fillColor = UIColor(red: 255/255, green: 201/255, blue: 176/255, alpha: 1).cgColor
                view.layer.addSublayer(layer6)
        
        //鬍子
        
        
        let beard = UIBezierPath()
                
        beard.move(to: CGPoint(x: 72, y: 141))
        
        beard.addQuadCurve(to: CGPoint(x: 100, y: 163),
             controlPoint: CGPoint(x: 103, y: 140))
        
        beard.addQuadCurve(to: CGPoint(x: 76, y: 182),
             controlPoint: CGPoint(x: 102, y: 183))
        
        beard.addQuadCurve(to: CGPoint(x: 54, y: 163),
             controlPoint: CGPoint(x: 57, y: 174))
        
        beard.addQuadCurve(to: CGPoint(x: 72, y: 141),
             controlPoint: CGPoint(x: 49, y: 141))
    
        
        let beardColor = CAShapeLayer()
                
        beardColor.path = beard.cgPath
        
        beardColor.lineWidth = 8
        
        beardColor.strokeColor = UIColor(red: 159/255, green: 188/255, blue: 191/255, alpha: 1).cgColor
        
        beardColor.fillColor = UIColor.clear.cgColor
                view.layer.addSublayer(beardColor)
        
        
        
        //上嘴唇
        
        
        let Lips = UIBezierPath()
                
        Lips.move(to: CGPoint(x: 70, y: 156))
        
        Lips.addQuadCurve(to: CGPoint(x: 93, y: 158),
             controlPoint: CGPoint(x: 77, y: 147))
        
        Lips.addQuadCurve(to: CGPoint(x: 58, y: 161),
             controlPoint: CGPoint(x: 72, y: 164))
       
        Lips.addQuadCurve(to: CGPoint(x: 70, y: 156),
             controlPoint: CGPoint(x: 67, y: 145))
        Lips.close()
        let LipsColor = CAShapeLayer()
                
        LipsColor.path = Lips.cgPath
        
        LipsColor.lineWidth = 0.5
        
        LipsColor.strokeColor = UIColor.black.cgColor
        
        LipsColor.fillColor = UIColor(red: 223/255, green: 54/255, blue: 93/255, alpha: 1).cgColor
                view.layer.addSublayer(LipsColor)
        
        //下嘴唇
        
        let Lips2 = UIBezierPath()
                
        Lips2.move(to: CGPoint(x: 93, y: 158))
        
        Lips2.addQuadCurve(to: CGPoint(x: 73, y: 173),
             controlPoint: CGPoint(x: 83, y: 170))
        
        Lips2.addQuadCurve(to: CGPoint(x: 66, y: 171),
             controlPoint: CGPoint(x: 65, y: 173))
        
        Lips2.addQuadCurve(to: CGPoint(x: 58, y: 161),
             controlPoint: CGPoint(x: 63, y: 171))
        
        Lips2.addQuadCurve(to: CGPoint(x: 95, y: 158),
             controlPoint: CGPoint(x: 72, y: 164))
        Lips2.close()
        
        
        let Lips2Color = CAShapeLayer()
                
        Lips2Color.path = Lips2.cgPath
        
        Lips2Color.lineWidth = 0.5
        
        Lips2Color.strokeColor = UIColor.black.cgColor
        
        Lips2Color.fillColor = UIColor(red: 223/255, green: 54/255, blue: 93/255, alpha: 1).cgColor
                view.layer.addSublayer(Lips2Color)
        
        
        
        //鬍渣
                let aDegree7 = CGFloat.pi
                let beard1 = UIBezierPath(arcCenter: CGPoint(x: 65, y: 137), radius: 1, startAngle: aDegree7 * 0, endAngle: aDegree7 * 180, clockwise: true)
    
                let layer7 = CAShapeLayer()
                layer7.path = beard1.cgPath
        
        layer7.fillColor = UIColor.black.cgColor
                view.layer.addSublayer(layer7)
        
        
        
        let aDegree8 = CGFloat.pi
        let beard2 = UIBezierPath(arcCenter: CGPoint(x: 68, y: 145), radius: 1, startAngle: aDegree8 * 0, endAngle: aDegree8 * 180, clockwise: true)
        
        let layer8 = CAShapeLayer()
        layer8.path = beard2.cgPath

layer8.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer8)
        
        
        let aDegree9 = CGFloat.pi
        let beard3 = UIBezierPath(arcCenter: CGPoint(x: 86, y: 145), radius: 1, startAngle: aDegree9 * 0, endAngle: aDegree9 * 180, clockwise: true)
        
        let layer9 = CAShapeLayer()
        layer9.path = beard3.cgPath

layer9.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer9)
        
        
        
        let aDegree10 = CGFloat.pi
        let beard4 = UIBezierPath(arcCenter: CGPoint(x: 95, y: 152), radius: 1, startAngle: aDegree10 * 0, endAngle: aDegree10 * 180, clockwise: true)
        
        let layer10 = CAShapeLayer()
        layer10.path = beard4.cgPath

layer10.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer10)
        
        
        let aDegree11 = CGFloat.pi
        let beard5 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 160), radius: 1, startAngle: aDegree11 * 0, endAngle: aDegree11 * 180, clockwise: true)
        
        let layer11 = CAShapeLayer()
        layer11.path = beard5.cgPath

layer11.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer11)
        
        
        let aDegree12 = CGFloat.pi
        let beard6 = UIBezierPath(arcCenter: CGPoint(x: 75, y: 179), radius: 1, startAngle: aDegree12 * 0, endAngle: aDegree12 * 180, clockwise: true)
        
        let layer12 = CAShapeLayer()
        layer12.path = beard6.cgPath

layer12.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer12)
        
        let aDegree13 = CGFloat.pi
        let beard7 = UIBezierPath(arcCenter: CGPoint(x: 59, y: 172), radius: 1, startAngle: aDegree13 * 0, endAngle: aDegree13 * 180, clockwise: true)
        
        let layer13 = CAShapeLayer()
        layer13.path = beard7.cgPath

        layer13.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer13)
        
        
        let aDegree14 = CGFloat.pi
        let beard8 = UIBezierPath(arcCenter: CGPoint(x: 53, y: 146), radius: 1, startAngle: aDegree14 * 0, endAngle: aDegree14 * 180, clockwise: true)
        
        let layer14 = CAShapeLayer()
        layer14.path = beard8.cgPath

        layer14.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer14)
        
        
        let aDegree15 = CGFloat.pi
        let beard9 = UIBezierPath(arcCenter: CGPoint(x: 99, y: 176), radius: 1, startAngle: aDegree15 * 0, endAngle: aDegree15 * 180, clockwise: true)
        
        let layer15 = CAShapeLayer()
        layer15.path = beard9.cgPath

        layer15.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer15)
        
        //右眼睫毛
        
        let Eyelashes = UIBezierPath()
                
        Eyelashes.move(to: CGPoint(x: 82, y: 113))
        Eyelashes.addLine(to: CGPoint(x: 81, y:117))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 86, y: 112))
        Eyelashes.addLine(to: CGPoint(x: 86, y:116))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 89, y: 110))
        Eyelashes.addLine(to: CGPoint(x: 89, y:114))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 93, y: 109))
        Eyelashes.addLine(to: CGPoint(x: 93, y:113))
        Eyelashes.close()
        
        
        Eyelashes.move(to: CGPoint(x: 96, y: 108))
        Eyelashes.addLine(to: CGPoint(x: 96, y:112))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 99, y: 107))
        Eyelashes.addLine(to: CGPoint(x: 99, y:111))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 102, y: 109))
        Eyelashes.addLine(to: CGPoint(x: 102, y:113))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 104, y: 110))
        Eyelashes.addLine(to: CGPoint(x: 104, y:113))
        Eyelashes.close()
        //左眼睫毛
        
        Eyelashes.move(to: CGPoint(x: 59, y: 110))
        Eyelashes.addLine(to: CGPoint(x: 59, y:113))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 56, y: 109))
        Eyelashes.addLine(to: CGPoint(x: 56, y:112))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 53, y: 108))
        Eyelashes.addLine(to: CGPoint(x: 53, y:111))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 50, y: 107))
        Eyelashes.addLine(to: CGPoint(x: 50, y:110))
        Eyelashes.close()
        
        Eyelashes.move(to: CGPoint(x: 47, y: 108))
        Eyelashes.addLine(to: CGPoint(x: 47, y:111))
        Eyelashes.close()
        
        let EyelashesColor = CAShapeLayer()
                
        EyelashesColor.path = Eyelashes.cgPath
        
        EyelashesColor.lineWidth = 1
        
        EyelashesColor.strokeColor = UIColor.black.cgColor
        
        EyelashesColor.fillColor = UIColor.clear.cgColor
                view.layer.addSublayer(EyelashesColor)
        
        
        //下半身
        
        let body = UIBezierPath()
                
        body.move(to: CGPoint(x: 54, y: 172))
        body.addLine(to: CGPoint(x: 55, y:179))
        body.addLine(to: CGPoint(x: 61, y:178))
        body.close()
        
        let bodyColor = CAShapeLayer()
                
        bodyColor.path = body.cgPath
        
        bodyColor.lineWidth = 1
        
        bodyColor.strokeColor = UIColor.black.cgColor
        
        bodyColor.fillColor = UIColor(red: 253/255, green: 205/255, blue: 183/255, alpha: 1).cgColor
                view.layer.addSublayer(bodyColor)
        
        
        
    
        let body2 = UIBezierPath()
                
        body2.move(to: CGPoint(x: 50, y: 180))
        body2.addLine(to: CGPoint(x: 60, y:178))
        body2.addLine(to: CGPoint(x: 59, y:199))
        body2.addLine(to: CGPoint(x: 46, y:199))
        body2.close()
        
        body2.move(to: CGPoint(x: 72, y: 185))
        body2.addLine(to: CGPoint(x: 75, y:190))
        body2.addLine(to: CGPoint(x: 59, y:199))
        body2.addLine(to: CGPoint(x: 60, y:179))
        body2.close()
        
        body2.move(to: CGPoint(x: 140, y: 168))
        body2.addQuadCurve(to: CGPoint(x: 146, y: 199),
             controlPoint: CGPoint(x: 149, y: 182))
        body2.addLine(to: CGPoint(x: 71, y:199))
        body2.addLine(to: CGPoint(x: 97, y:189))
        
        body2.addQuadCurve(to: CGPoint(x: 140, y: 168),
             controlPoint: CGPoint(x: 118, y: 187))
        body2.close()
        
        body2.move(to: CGPoint(x: 94, y: 199))
        body2.addQuadCurve(to: CGPoint(x: 93, y: 196),
             controlPoint: CGPoint(x: 90, y: 196))
        
        body2.addLine(to: CGPoint(x: 126, y:183))
    
        body2.addQuadCurve(to: CGPoint(x: 128, y: 185),
             controlPoint: CGPoint(x: 130, y: 180))
        body2.addLine(to: CGPoint(x: 126, y:199))
        
        
        let bodyColor2 = CAShapeLayer()
                
        bodyColor2.path = body2.cgPath
        
        bodyColor2.lineWidth = 1.5
        
        bodyColor2.strokeColor = UIColor.black.cgColor
        
        bodyColor2.fillColor = UIColor(red: 252/255, green: 177/255, blue: 171/255, alpha: 1).cgColor
                view.layer.addSublayer(bodyColor2)
        
        
        let body3 = UIBezierPath()
        
        body3.move(to: CGPoint(x: 72, y: 185))
        
        body3.addQuadCurve(to: CGPoint(x: 99, y: 188),
             controlPoint: CGPoint(x: 77, y: 189))
        
    body3.addLine(to: CGPoint(x: 71, y:199))
        
        body3.addLine(to: CGPoint(x: 60, y:199))
        
        body3.addQuadCurve(to: CGPoint(x: 85, y: 188),
             controlPoint: CGPoint(x: 75, y: 189))
        
        body3.addLine(to: CGPoint(x: 75, y:189))
        

        let bodyColor3 = CAShapeLayer()
                
        bodyColor3.path = body3.cgPath
        
        bodyColor3.lineWidth = 1.5
        
        bodyColor3.strokeColor = UIColor.black.cgColor
        
        bodyColor3.fillColor = UIColor(red: 178/255, green: 78/255, blue: 95/255, alpha: 1).cgColor
                view.layer.addSublayer(bodyColor3)
        
        
        //手
        
        
        func ADDN() {
        
        let hand = UIBezierPath()
        
        hand.move(to: CGPoint(x: 106, y: 190))
        
        hand.addQuadCurve(to: CGPoint(x: 107, y: 175),
             controlPoint: CGPoint(x: 110, y: 174))
        
        hand.addQuadCurve(to: CGPoint(x: 108, y: 161),
             controlPoint: CGPoint(x: 105, y: 164))
        
        hand.addQuadCurve(to: CGPoint(x: 125, y: 164),
             controlPoint: CGPoint(x: 120, y: 151))
        
        hand.addQuadCurve(to: CGPoint(x: 131, y: 163),
             controlPoint: CGPoint(x: 128, y: 157))
        
        hand.addQuadCurve(to: CGPoint(x: 130, y: 169),
             controlPoint: CGPoint(x: 132, y: 169))
        
        hand.addQuadCurve(to: CGPoint(x: 123, y: 179),
             controlPoint: CGPoint(x: 128, y: 177))
        
        hand.addLine(to: CGPoint(x: 123, y:184))
        

        let handColor = CAShapeLayer()
                
        handColor.path = hand.cgPath
        
        handColor.lineWidth = 1.5
        
        handColor.strokeColor = UIColor.black.cgColor
        
        handColor.fillColor = UIColor(red: 253/255, green: 205/255, blue: 183/255, alpha: 1).cgColor
                view.layer.addSublayer(handColor)
            
            
            let animation = CABasicAnimation(keyPath: "transform.scale.y")
            animation.fromValue = 0.5
            animation.toValue = 1
            animation.duration = 1
            animation.repeatCount = .greatestFiniteMagnitude
           handColor.add(animation, forKey: nil)
        }
       
        ADDN()
        
        
        
        
        
        
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
