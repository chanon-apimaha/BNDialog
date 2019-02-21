////  Copyright (c) 2019 Banchai Nangpang <pong.np1@gmail.com>
//
////  Permission is hereby granted, free of charge, to any person obtaining a copy
////  of this software and associated documentation files (the "Software"), to deal
////  in the Software without restriction, including without limitation the rights
////  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
////  copies of the Software, and to permit persons to whom the Software is
////  furnished to do so, subject to the following conditions:
//
////  The above copyright notice and this permission notice shall be included in
////  all copies or substantial portions of the Software.
//
////  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
////  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
////  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
////  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
////  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
////  THE SOFTWARE.
//
////  Created by Banchai Nangpang on 21/02/2019 BE.
////
//
////
import UIKit
////import PTConfig
////import Foundation
open class BNDialog: UIAlertController {
//
//    private  enum iDisplayType: Int {
//        case title = 0
//        case message = 1
//    }
//
//    enum iMessageAlignMent: Int {
//        case center = 0
//        case left = 1
//        case right = 2
//    }
//
//    enum iWaitingType: Int {
//        case topic = 0
//        case comment = 1
//        case voteTopic = 2
//    }
//
//    var iTypeNoticeTime: iWaitingType!
//    var iSeconds: Int = 10
//    var sTopicID: String = ""
//    var sVoteMessage: String = ""
//    var timer: Timer =  Timer()
//    var isPresented = false
//    static var axLastMessage: [String] = []
//    private var sTextForTimer: String!
//
//    private var mViewController: UIViewController!
//    private var mTitleTextView: UITextView!
//    private var mMessageTextView: UITextView!
//    private var mAlertController: UIAlertController!
//    var mInsertMediaAlertAction: UIAlertAction!
//    var oTarget: UIViewController!
//
//    private func getStyleDisplayText(iDisplayType: iDisplayType) -> String {
//        switch iDisplayType {
//        case .title:
//            return "<style type=\"text/css\">" +
//                "* {" +
//                "-webkit-touch-callout: none;" +
//                "-webkit-user-select: none;" +
//                "}" +
//                "body {" +
//                "margin: 0;" +
//                "padding: 0;" +
//                "line-height: 14pt;" +
//                "font-family: Helvetica Neue, Helvetica, Arial, Sans-serif, Geneva, Tahoma;" +
//                "color: \(UIColor.Palette.black.hexString);" +
//                "font-weight: bold;" +
//                "font-size: 12.5pt;" +
//                "}" +
//                "h1 { line-height: 20pt; }" +
//                "hr {" +
//                "border: none;" +
//                "border-bottom: 1px solid \(UIColor._text.disabled.hexString);" +
//                "}" +
//                ".focus02-txt { color: \(UIColor._text.disabled.hexString); }" +
//                "a:visited { color: \( UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue).hexString); }" +
//                "a:link { color: \( UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue).hexString); }" +
//                "table {" +
//                "line-height: 14pt;" +
//                "font-family: Helvetica Neue, Helvetica, Arial, Sans-serif, Geneva, Tahoma;" +
//                "color: \(UIColor.Palette.black.hexString);" +
//                "font-size: 12.5pt;" +
//                "font-weight: bold;" +
//                "}" +
//            "</style>"
//        case .message:
//            return "<style type=\"text/css\">" +
//                "* {" +
//                "-webkit-touch-callout: none;" +
//                "-webkit-user-select: none;" +
//                "}" +
//                "body {" +
//                "margin: 0;" +
//                "padding: 0;" +
//                "line-height: 14pt;" +
//                "font-family: Helvetica Neue, Helvetica, Arial, Sans-serif, Geneva, Tahoma;" +
//                "color:\(UIColor.Palette.black.hexString);" +
//                "font-size: 10.5pt;" +
//                "}" +
//                "h1 { line-height: 20pt; }" +
//                "hr {" +
//                "border: none;" +
//                "border-bottom: 1px solid \(UIColor._text.disabled.hexString);" +
//                "}" +
//                ".focus02-txt { color: \(UIColor.Palette._700.yellow.hexString); }" +
//                "a:visited { color: \( UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue).hexString); }" +
//                "a:link { color: \( UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue).hexString); }" +
//                "table {" +
//                "line-height: 14pt;" +
//                "font-family: Helvetica Neue, Helvetica, Arial, Sans-serif, Geneva, Tahoma;" +
//                "color: \(UIColor.Palette.black.hexString);" +
//                "font-size: 10.5pt;" +
//                "}" +
//            "</style>"
//        }
//    }
//
//    private func setHtml(sText: String, iDisplayType: iDisplayType, iMessageAlignMent: iMessageAlignMent) -> String {
//
//        var sTextNew = ""
//        switch iMessageAlignMent {
//        case .center:
//            sTextNew = "<div align=\"center\">" + sText + "</div>"
//        case .left:
//            sTextNew = "<div align=\"left\">" + sText + "</div>"
//        case .right:
//            sTextNew = "<div align=\"right\">" + sText + "</div>"
//        }
//        
//        switch iDisplayType {
//        case .title, .message:
//            return "<html>" +
//                "<head>" +
//                "<title>Pantip_App</title>" +
//                self.getStyleDisplayText(iDisplayType: iDisplayType) +
//                "</head>" +
//                "<body>" +
//                "\(sTextNew.replacingOccurrences(of: "\n", with: "<br />"))" +
//                "</body>" +
//            "</html>"
//        }
//    }
//
//    func notice(sTitle: String = "ALERT".stringLocalized(), sMessage: String, buttonAction: PTConfig.AlertAction = .ok, buttonTextColor: UIColor =  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue), iMessageAlignMent: iMessageAlignMent = .center, target: UIViewController, callbackHandler : ((_ buttonAction: PTConfig.AlertAction) -> ())?){
//        let oShowDialog = ShowDialog()
//        oShowDialog.baseDialogNotice(sTitle: sTitle, sMessage: sMessage, iMessageAlignMent: iMessageAlignMent, axAlertAction: [buttonAction : buttonTextColor], target: target, callbackHandler: { (action, _) in
//            switch action {
//            case buttonAction:
//                callbackHandler?(action)
//            default:
//                break
//            }
//        })
//    }
//
//    @objc func dismissNotice() {
//        DispatchQueue.main.async {
//            UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: {
//                // remove array ที่เอาไว้ใช้ dialog ข้อความต้องไม่ซ้ำ
//                if ShowDialog.axLastMessage.count > 0 {
//                    ShowDialog.axLastMessage.removeLast()
//                }
//                if ShowDialog.axLastMessage.count == 0 && UIApplication.shared.windows.indices.contains(0) {
//                    UIApplication.shared.windows[0].makeKeyAndVisible()
//                }
//            })
//        }
//    }
//
//    func noticeTime(sTopicID: String ,iCountDownTime: Int, iWaitingType: iWaitingType, iMessageAlignMent: iMessageAlignMent = .center, target: UIViewController, callbackHandler : ((_ buttonAction: PTConfig.AlertAction) -> ())?){
//        let oShowDialog = ShowDialog()
//        oShowDialog.setTimer(sTopicID: sTopicID, iCountDownTime: iCountDownTime, iWaitingType: iWaitingType)
//        oShowDialog.baseDialogNotice(
//            sMessage: oShowDialog.sTextForTimer,
//            iMessageAlignMent: iMessageAlignMent,
//            axAlertAction: [
//                (iWaitingType == .topic) ? .showTopic :
//                    .showComment :  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue),
//                .ok :  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)
//            ],
//            target: target,
//            callbackHandler: { (action, _) in
//                oShowDialog.timer.invalidate()
//                switch action {
//                case .ok, .showComment, .showTopic:
//                    callbackHandler?(action)
//                default:
//                    break
//                }
//        })
//        oShowDialog.runTimer()
//    }
//
//    func noticeTimeVote(sMessage: String ,iCountDownTime: Int, iMessageAlignMent: iMessageAlignMent = .center, iWaitingType: iWaitingType, target: UIViewController, callbackHandler : ((_ buttonAction: PTConfig.AlertAction) -> ())?){
//        let oShowDialog = ShowDialog()
//        oShowDialog.setTimerVote(sMessage: sMessage, iCountDownTime: iCountDownTime, iWaitingType: iWaitingType)
//        oShowDialog.baseDialogNotice(
//            sMessage: oShowDialog.sTextForTimer,
//            iMessageAlignMent: iMessageAlignMent,
//            target: target,
//            callbackHandler: { (action, _) in
//                oShowDialog.timer.invalidate()
//                switch action {
//                case .back:
//                    callbackHandler?(action)
//                default:
//                    break
//                }
//        })
//        oShowDialog.runTimer()
//    }
//
//    func confirm(sTitle: String = "ALERT".stringLocalized(), sMessage: String , buttonAction: PTConfig.AlertAction = .confirm, buttonTextColor: UIColor =  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue),iMessageAlignMent: iMessageAlignMent = .center, target: UIViewController, callbackHandler : ((_ buttonAction: PTConfig.AlertAction) -> ())?){
//        let oShowDialog = ShowDialog()
//        oShowDialog.baseDialogNotice(sTitle: sTitle, sMessage: sMessage, iMessageAlignMent: iMessageAlignMent, axAlertAction: [buttonAction : buttonTextColor, .cancel:  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)], target: target, callbackHandler: { (action, _) in
//            switch action {
//            case buttonAction:
//                callbackHandler?(action)
//            default:
//                break
//            }
//        })
//    }
//
//    func multiNotice(sTitle: String = "ALERT".stringLocalized(), sMessage: String = "", iMessageAlignMent: iMessageAlignMent = .center, axAlertAction: [PTConfig.AlertAction : UIColor] = [.ok :  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)], axAlertTextField: [String : Bool] = [:] ,textFieldButtonAction: PTConfig.AlertAction = .ok , target: UIViewController, callbackHandler : ((_ buttonAction: PTConfig.AlertAction, _ textFields: [UITextField] ) -> ())?) {
//        let oShowDialog = ShowDialog()
//        oShowDialog.baseDialogNotice(sTitle: sTitle, sMessage: sMessage, iMessageAlignMent: iMessageAlignMent, axAlertAction: axAlertAction, axAlertTextField: axAlertTextField, textFieldButtonAction: textFieldButtonAction, target: target, callbackHandler: callbackHandler)
//
//    }
//
//    private func baseDialogNotice(sTitle: String = "ALERT".stringLocalized(), sMessage: String = "", iMessageAlignMent: iMessageAlignMent = .center, axAlertAction: [PTConfig.AlertAction : UIColor] = [.ok :  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)], axAlertTextField: [String : Bool] = [:] ,textFieldButtonAction: PTConfig.AlertAction = .ok , target: UIViewController, callbackHandler : ((_ buttonAction: PTConfig.AlertAction, _ textFields: [PantipUITextField] ) -> ())?) {
//
//        self.mTitleTextView = UITextView()
//        self.mMessageTextView = UITextView()
//        self.oTarget = target
//        self.mAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
//
//        //เพิ่ม textfield
//        for (_,textfield) in axAlertTextField.enumerated() {
//            self.mAlertController.addTextField { (textField : UITextField) -> Void in
//                textField.isSecureTextEntry = textfield.value
//                textField.placeholder = textfield.key
//                textField.autocorrectionType = .no
//                textField.isUserInteractionEnabled = true
//                if textfield.key == "URL_MULTIMEDIA".stringLocalized() {
//                    let accessoryView = UIView(frame: .zero)
//                    accessoryView.backgroundColor = UIColor.Palette._300.gray
//                    accessoryView.addBorder(edges: .top, colour: UIColor.Palette._800.purplePantip, thickness: 0.3)
//                    accessoryView.frame = CGRect(x: 0, y: 0, width: 300, height: 48)
//                    textField.inputAccessoryView = accessoryView
//                    accessoryView.frame = CGRect(x: 0, y: 0, width: 300, height: 48)
//                    accessoryView.translatesAutoresizingMaskIntoConstraints = false
//                    let mButton = PantipButton(type: .custom)
//                    mButton.showsTouchWhenHighlighted = true
//                    mButton.isEnabled = true
//                    mButton.imageView?.contentMode = .scaleAspectFit
//                    mButton.setImage(UIImage(named: "ic-keyboard-hide")?.withRenderingMode(.alwaysTemplate), for: .normal)
//                    mButton.imageView?.tintColor = UIColor.black.withAlphaComponent(0.38)
//                    mButton.addTarget(self, action: #selector(self.dismissNotice), for: .touchUpInside)
//
//                    accessoryView.addSubview(mButton)
//                    mButton.translatesAutoresizingMaskIntoConstraints = false
//                    mButton.centerYAnchor.constraint(equalTo: accessoryView.centerYAnchor).isActive = true
//                    mButton.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
//                    mButton.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
//                    mButton.trailingAnchor.constraint(equalTo: accessoryView.trailingAnchor, constant: -8).isActive = true
//                    textField.addTarget(self, action: #selector(self.mediaTextChanged(_:)), for: .editingChanged)
//                }
//            }
//        }
//        
//        //เพิ่มปุ่ม action
//        for (_,buttonAction) in axAlertAction.enumerated() {
//            let action = UIAlertAction(
//                title: buttonAction.key.rawValue.stringLocalized(),
//                style: (buttonAction.key != .cancel && buttonAction.key != .decline) ? .default : .cancel ,
//                handler: { (alert: UIAlertAction!) in
//                    if self.isPresented {
//                        self.isPresented = false
//                    }
//                    // remove array ที่เอาไว้ใช้ dialog ข้อความต้องไม่ซ้ำ
//                    if ShowDialog.axLastMessage.count > 0 {
//                        ShowDialog.axLastMessage.removeLast()
//                    }
//                    if ShowDialog.axLastMessage.count == 0 && UIApplication.shared.windows.indices.contains(0) {
//                        UIApplication.shared.windows[0].makeKeyAndVisible()
//                    }
//
//                    if buttonAction.key != textFieldButtonAction {
//                        callbackHandler?(buttonAction.key, [])
//                    } else {
//                        callbackHandler?(buttonAction.key, self.mAlertController.textFields! as! [PantipUITextField])
//                    }
//            })
//            if buttonAction.key != .cancel && buttonAction.key != .decline{
//                action.setValue(buttonAction.value, forKey: "titleTextColor")
//            } else {
//                action.setValue(UIColor.red.withAlphaComponent(0.6), forKey: "titleTextColor")
//            }
//            if buttonAction.key == .insertMultimedia {
//                action.isEnabled = false
//                self.mInsertMediaAlertAction = action
//            }
//            self.mAlertController.addAction(action)
//        }
//
//        //Title Alert
//        let attrStringTitleText = self.setHtml(sText: sTitle, iDisplayType: .title, iMessageAlignMent: iMessageAlignMent).strHtmlToAttrStr()
//        self.mTitleTextView.attributedText = attrStringTitleText
//        self.mTitleTextView.textAlignment = .center
//        self.mTitleTextView.backgroundColor = .clear
//        self.mTitleTextView.isOpaque = false
//        self.mTitleTextView.delegate = self
//        self.mTitleTextView.isEditable = false
//        self.mTitleTextView.isScrollEnabled = false
//
//        //Message Alert
//        let attrStringMessageText = self.setHtml(sText: sMessage, iDisplayType: .message, iMessageAlignMent: iMessageAlignMent).strHtmlToAttrStr()
//        self.mMessageTextView.attributedText =  attrStringMessageText
//        self.mMessageTextView.backgroundColor = .clear
//        self.mMessageTextView.isOpaque = false
//        self.mMessageTextView.delegate = self
//        self.mMessageTextView.isEditable = false
//        self.mMessageTextView.dataDetectorTypes = .link
//
//        //คำนวณความสูงของ content เช่น Tilte, Message, contentViewController
//        let fAlertWidth: CGFloat = 262.0
//        let fTitleHeight =  Util.shared.getHeightTextView(sText: self.mTitleTextView.attributedText!, fWidth: fAlertWidth)
//        var fMessageHeight: CGFloat =  Util.shared.getHeightTextView(sText: self.mMessageTextView.attributedText, fWidth: fAlertWidth)
//        var fContentHeight: CGFloat = 0.0
//        if fMessageHeight > 120 {
//            fMessageHeight = 120
//        } else {
//            self.mMessageTextView.isScrollEnabled = false
//            if fMessageHeight < 44 {
//                fMessageHeight = 44
//            }
//        }
//        //ความสูงของ contentViewController
//        fContentHeight = fMessageHeight + fTitleHeight
//
//        //set addsubView and set Constraints on mViewController
//        self.mViewController = UIViewController()
//        self.mViewController.view.addSubview(self.mTitleTextView)
//        self.mViewController.view.addSubview(self.mMessageTextView)
//        self.mViewController.view.addConstraintsWithFormat(format: "V:|[v0(\(fTitleHeight))]-(-8)-[v1(\(fMessageHeight))]-(8)-|", views: self.mTitleTextView,self.mMessageTextView)
//        self.mViewController.view.addConstraintsWithFormat(format: "H:|[v0(\(fAlertWidth - 2))]|", views: self.mTitleTextView)
//        self.mViewController.view.addConstraintsWithFormat(format: "H:|[v0(\(fAlertWidth - 2))]|", views: self.mMessageTextView)
//        self.mViewController.preferredContentSize = CGSize(width: fAlertWidth, height: fContentHeight)
//        self.mAlertController.setValue(self.mViewController, forKey: "contentViewController")
//
//        DispatchQueue.main.async {
//            let oAlertWindow = UIWindow(frame: UIScreen.main.bounds)
//            oAlertWindow.rootViewController = UIViewController()
//            oAlertWindow.windowLevel = UIWindow.Level.alert + 1
//            oAlertWindow.makeKeyAndVisible()
//            if !ShowDialog.axLastMessage.contains(sMessage) {
//                self.isPresented = true
//                ShowDialog.axLastMessage.append(sMessage)
//                oAlertWindow.rootViewController?.present(self.mAlertController, animated: true, completion: nil)
//            }
//        }
//    }
//
//    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
//        if self.isPresented {
//            self.isPresented = false
//        }
//    }
//
//    func setTimer(sTopicID: String, iCountDownTime: Int ,iWaitingType: iWaitingType ) {
//        self.iSeconds = iCountDownTime
//        self.sTopicID = sTopicID
//        self.timer.invalidate()
//        self.iTypeNoticeTime = iWaitingType
//        self.setMessageTimer()
//    }
//
//    func setTimerVote(sMessage: String, iCountDownTime: Int ,iWaitingType: iWaitingType ) {
//        self.iSeconds = iCountDownTime
//        //self.sTopicID = sTopicID
//        self.sVoteMessage = sMessage
//        self.timer.invalidate()
//        self.iTypeNoticeTime = iWaitingType
//        self.setMessageTimer()
//    }
//    
//    func setMessageTimer() {
//        let iWaitingType: iWaitingType = self.iTypeNoticeTime
//        switch iWaitingType {
//        case .topic:
//            self.sTextForTimer = "\("CREATE_TOPIC_NUMBER".stringLocalized()) \(self.sTopicID) \("COMPLETED".stringLocalized()) \("WAIT".stringLocalized()) \(self.iSeconds) \("SECOND".stringLocalized()) \("NEXT_CREATE_TOPIC".stringLocalized())"
//        case .comment:
//            self.sTextForTimer = "\("COMMENT_TOPIC_NUMBER".stringLocalized()) \(self.sTopicID) \("COMPLETED".stringLocalized()) \("WAIT".stringLocalized()) \(self.iSeconds) \("SECOND".stringLocalized()) \("NEXT_COMMENT_TOPIC".stringLocalized())"
//        case .voteTopic:
//            if self.iSeconds != 0 {
//                self.sTextForTimer = "\(self.sVoteMessage) \("WAIT_FOR_INCREMENT_VOTE_POIN".stringLocalized()) \(self.getMinuteTime()) \("MINUTE".stringLocalized())"
//            } else {
//                self.sTextForTimer = "\(self.sVoteMessage)"
//            }
//        }
//    }
//
//    func getMinuteTime() -> String {
//        return String(format: "%02d:%02d", (self.iSeconds / 60), (self.iSeconds % 60))
//    }
//
//    func runTimer()  {
//        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(self.updateTimer)), userInfo: nil, repeats: true)
//    }
//
//    @objc func updateTimer() {
//        if !(self.iSeconds < 1) {
//            self.iSeconds -= 1     //This will decrement(count down)the seconds.
//            self.setMessageTimer()
//            self.mMessageTextView.attributedText = self.setHtml(sText: self.sTextForTimer, iDisplayType: .message, iMessageAlignMent: .center).strHtmlToAttrStr() //This will update the label.
//        } else {
//            self.timer.invalidate()
//        }
//    }
}
//
//extension ShowDialog: UITextViewDelegate {
//
//    @objc func mediaTextChanged(_ sender: UITextField) {
//        let sURL = sender.text?.lowercased()
//        if (sURL?.range(of: "youtube.com\\/.|youtu.be\\/.",options: .regularExpression) != nil) {
//            sender.tag =  PTConfig.MediaType.youtube.rawValue
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else if (sURL?.range(of: "vimeo.com\\/.",options: .regularExpression) != nil) {
//            sender.tag = PTConfig.MediaType.vimeo.rawValue
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else if (sURL?.range(of: "slideshare.net\\/.",options: .regularExpression) != nil) {
//            sender.tag = PTConfig.MediaType.slideshare.rawValue
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else if (sURL?.range(of: "scribd.com\\/.",options: .regularExpression) != nil) {
//            sender.tag = PTConfig.MediaType.scribd.rawValue
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else {
//            self.mInsertMediaAlertAction.isEnabled = false
//        }
//    }
//    
//    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
//        if UIApplication.shared.canOpenURL(URL) {
//            UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: {
//                // remove array ที่เอาไว้ใช้ dialog ข้อความต้องไม่ซ้ำ
//                if ShowDialog.axLastMessage.count > 0 {
//                    ShowDialog.axLastMessage.removeLast()
//                }
//                if ShowDialog.axLastMessage.count == 0 && UIApplication.shared.windows.indices.contains(0) {
//                    UIApplication.shared.windows[0].makeKeyAndVisible()
//                }
//                self.oTarget.navigationController?.presentViewToWebView(sUrl: URL.absoluteString, openAnimate: .present)
//            })
//            
//            //            self.oTarget.dismiss(animated: true, completion: {
//            //                self.oTarget.navigationController?.presentViewToWebView(sUrl: URL.absoluteString, openAnimate: .present)
//            //            })
//            return false
//        }
//        return false
//    }
//}
//
