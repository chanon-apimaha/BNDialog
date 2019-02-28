//////  Copyright (c) 2019 Banchai Nangpang <pong.np1@gmail.com>
////
//////  Permission is hereby granted, free of charge, to any person obtaining a copy
//////  of this software and associated documentation files (the "Software"), to deal
//////  in the Software without restriction, including without limitation the rights
//////  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//////  copies of the Software, and to permit persons to whom the Software is
//////  furnished to do so, subject to the following conditions:
////
//////  The above copyright notice and this permission notice shall be included in
//////  all copies or substantial portions of the Software.
////
//////  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//////  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//////  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//////  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//////  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//////  THE SOFTWARE.
////
//////  Created by Banchai Nangpang on 21/02/2019 BE.
//////
////
//////
//import UIKit
//
//public extension UIAlertController {
//    public struct dialog {
//        public static var titleDefault: String = "แจ้งเตือน"//"ALERT".stringLocalized()
//        public struct buttonActionDefault {
//            public static var _OR: String = "OR"
//            public static var _OK: String = "OK"
////            case or = "OR"
////            case ok = "OK"
////            case selectAll = "SELECT_ALL"
////            case unknow = "UNKNOW"
////            case back =  "BACK"
////            case backTo = "BACK_TO"
////            case save =  "SAVE"
////            case cancel = "CANCEL"
//             public static var _CANCEL: String = "CANCEL"
////            case cancelCreate = "CANCEL_CREATE"
////            case close = "CLOSE"
////            case done = "DONE"
////            case confirm = "CONFIRM"
//            public static var _CONFIRM: String = "CONFIRM"
////            case confirmSaveTopic = "CONFIRM_SAVE_TOPIC"
////            case alert = "ALERT"
////            case tryAgain = "TRY_AGAIN"
////            case accept = "ACCEPT"
////            case decline = "DECLINE"
//            public static var _DECLINE = "DECLINE"
////            case backToSelectTags = "BACK_TO_SELECT_TAGS"
////            case insertMultimedia = "INSERT_MULTIMEDIA"
////            case showComment = "SHOW_COMMENT"
////            case showTopic = "SHOW_TOPIC"
////            case shortTryAgain = "TRY_AGAIN_BUTTON"
////            case setting = "SETTING_TITLE"
////            case logout = "SELECT_LOGOUT"
//        }
//        
//        public struct hexColor {
//            public struct text {
//                public struct title {
//                    public static var normal: String = "#000000"
//                    public static var focus: String = "#000000"
//                }
//                public struct message {
//                    public static var normal: String = "#000000"
//                    public static var focus: String = "#000000"
//                }
//            }
//            public struct link {
//                public struct title {
//                    public static var aLink: String = "#000000"
//                    public static var aVisited: String = "#000000"
//                }
//                public struct message {
//                    public static var aLink: String = "#000000"
//                    public static var aVisited: String = "#000000"
//                }
//            }
//            public struct border {
//                public static var title: String = "#000000"
//                public static var message: String = "#000000"
//            }
//        }
//        
//        public struct mediaType {
//            public static var youtube: Int = 1
//            public static var vimeo: Int = 2
//            public static var slideshare: Int = 3
//            public static var scribd: Int = 4
//        }
//        
////        public static ButtonDefaultColor =
////        
////        PTConfig.customColor.ButtonColor.uiColorBgBlue
//    }
//}
//
open class BNDialog: UIAlertController {
////
//    private  enum iDisplayType: Int {
//        case title = 0
//        case message = 1
//    }
////
//   public enum iMessageAlignMent: Int {
//        case center = 0
//        case left = 1
//        case right = 2
//    }
////
//    public enum iWaitingType: Int {
//        case topic = 0
//        case comment = 1
//        case voteTopic = 2
//    }
////
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
//        
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
//                "color: \(UIAlertController.dialog.hexColor.text.title.normal);" +
//                "font-weight: bold;" +
//                "font-size: 12.5pt;" +
//                "}" +
//                "h1 { line-height: 20pt; }" +
//                "hr {" +
//                "border: none;" +
//                "border-bottom: 1px solid \(UIAlertController.dialog.hexColor.border.title);" +
//                "}" +
//                ".focus02-txt { color: \(UIAlertController.dialog.hexColor.text.title.focus); }" +
//                "a:visited { color: \(UIAlertController.dialog.hexColor.link.title.aVisited); }" +
//                "a:link { color: \( UIAlertController.dialog.hexColor.link.title.aLink); }" +
//                "table {" +
//                "line-height: 14pt;" +
//                "font-family: Helvetica Neue, Helvetica, Arial, Sans-serif, Geneva, Tahoma;" +
//                "color: \(UIAlertController.dialog.hexColor.text.title.normal);" +
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
//                "color:\(UIAlertController.dialog.hexColor.text.message.normal);" +
//                "font-size: 10.5pt;" +
//                "}" +
//                "h1 { line-height: 20pt; }" +
//                "hr {" +
//                "border: none;" +
//                "border-bottom: 1px solid \(UIAlertController.dialog.hexColor.border.message);" +
//                "}" +
//                ".focus02-txt { color: \(UIAlertController.dialog.hexColor.text.message.focus); }" +
//                "a:visited { color: \( UIAlertController.dialog.hexColor.link.message.aVisited); }" +
//                "a:link { color: \(UIAlertController.dialog.hexColor.link.message.aLink); }" +
//                "table {" +
//                "line-height: 14pt;" +
//                "font-family: Helvetica Neue, Helvetica, Arial, Sans-serif, Geneva, Tahoma;" +
//                "color: \(UIAlertController.dialog.hexColor.text.message.normal);" +
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
//    func notice(sTitle: String = UIAlertController.dialog.titleDefault, sMessage: String, buttonAction: String = UIAlertController.dialog.buttonActionDefault._OK, buttonTextColor: UIColor =  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue), iMessageAlignMent: iMessageAlignMent = .center, target: UIViewController, callbackHandler : ((_ buttonAction: String) -> ())?){
//        let oShowDialog = BNDialog()
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
//                if BNDialog.axLastMessage.count > 0 {
//                    BNDialog.axLastMessage.removeLast()
//                }
//                if BNDialog.axLastMessage.count == 0 && UIApplication.shared.windows.indices.contains(0) {
//                    UIApplication.shared.windows[0].makeKeyAndVisible()
//                }
//            })
//        }
//    }
//
//    func noticeTime(sTopicID: String ,iCountDownTime: Int, iWaitingType: iWaitingType, iMessageAlignMent: iMessageAlignMent = .center, target: UIViewController, callbackHandler : ((_ buttonAction: String) -> ())?){
//        let oShowDialog = BNDialog()
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
//    func noticeTimeVote(sMessage: String ,iCountDownTime: Int, iMessageAlignMent: iMessageAlignMent = .center, iWaitingType: iWaitingType, target: UIViewController, callbackHandler : ((_ buttonAction: String) -> ())?){
//        let oShowDialog = BNDialog()
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
//    func confirm(sTitle: String = UIAlertController.dialog.titleDefault, sMessage: String , buttonAction: String = UIAlertController.dialog.buttonActionDefault._CONFIRM, buttonTextColor: UIColor =  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue),iMessageAlignMent: iMessageAlignMent = .center, target: UIViewController, callbackHandler : ((_ buttonAction: String) -> ())?){
//        let oShowDialog = BNDialog()
//        oShowDialog.baseDialogNotice(sTitle: sTitle, sMessage: sMessage, iMessageAlignMent: iMessageAlignMent, axAlertAction: [buttonAction : buttonTextColor, UIAlertController.dialog.buttonActionDefault._CANCEL:  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)], target: target, callbackHandler: { (action, _) in
//            switch action {
//            case buttonAction:
//                callbackHandler?(action)
//            default:
//                break
//            }
//        })
//    }
//
//    func multiNotice(sTitle: String = UIAlertController.dialog.titleDefault, sMessage: String = "", iMessageAlignMent: iMessageAlignMent = .center, axAlertAction: [String : UIColor] = [UIAlertController.dialog.buttonActionDefault._OK :  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)], axAlertTextField: [String : Bool] = [:] ,textFieldButtonAction: String = UIAlertController.dialog.buttonActionDefault._OK , target: UIViewController, callbackHandler : ((_ buttonAction: String, _ textFields: [UITextField] ) -> ())?) {
//        let oShowDialog = BNDialog()
//        oShowDialog.baseDialogNotice(sTitle: sTitle, sMessage: sMessage, iMessageAlignMent: iMessageAlignMent, axAlertAction: axAlertAction, axAlertTextField: axAlertTextField, textFieldButtonAction: textFieldButtonAction, target: target, callbackHandler: callbackHandler)
//
//    }
//
//    private func baseDialogNotice(sTitle: String = UIAlertController.dialog.titleDefault, sMessage: String = "", iMessageAlignMent: iMessageAlignMent = .center, axAlertAction: [String : UIColor] = [UIAlertController.dialog.buttonActionDefault._OK :  UIColor(sColor: PTConfig.customColor.ButtonColor.uiColorBgBlue)], axAlertTextField: [String : Bool] = [:] ,textFieldButtonAction: String = UIAlertController.dialog.buttonActionDefault._OK , target: UIViewController, callbackHandler : ((_ buttonAction: String, _ textFields: [PantipUITextField] ) -> ())?) {
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
//                title: buttonAction.key.stringLocalized(),
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
//            if buttonAction.key != UIAlertController.dialog.buttonActionDefault._CANCEL && buttonAction.key != UIAlertController.dialog.buttonActionDefault._DECLINE {
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
//            if !BNDialog.axLastMessage.contains(sMessage) {
//                self.isPresented = true
//                BNDialog.axLastMessage.append(sMessage)
//                oAlertWindow.rootViewController?.present(self.mAlertController, animated: true, completion: nil)
//            }
//        }
//    }
//
//    override open func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
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
//}
//
//extension BNDialog: UITextViewDelegate {
//
//    @objc func mediaTextChanged(_ sender: UITextField) {
//        let sURL = sender.text?.lowercased()
//        if (sURL?.range(of: "youtube.com\\/.|youtu.be\\/.",options: .regularExpression) != nil) {
//            sender.tag = UIAlertController.dialog.mediaType.youtube
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else if (sURL?.range(of: "vimeo.com\\/.",options: .regularExpression) != nil) {
//            sender.tag = UIAlertController.dialog.mediaType.vimeo
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else if (sURL?.range(of: "slideshare.net\\/.",options: .regularExpression) != nil) {
//            sender.tag = UIAlertController.dialog.mediaType.slideshare
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else if (sURL?.range(of: "scribd.com\\/.",options: .regularExpression) != nil) {
//            sender.tag = sender.tag = UIAlertController.dialog.mediaType.scribd
//            self.mInsertMediaAlertAction.isEnabled = true
//        } else {
//            self.mInsertMediaAlertAction.isEnabled = false
//        }
//    }
//    
//   public func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
//        if UIApplication.shared.canOpenURL(URL) {
//            UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: {
//                // remove array ที่เอาไว้ใช้ dialog ข้อความต้องไม่ซ้ำ
//                if BNDialog.axLastMessage.count > 0 {
//                    BNDialog.axLastMessage.removeLast()
//                }
//                if BNDialog.axLastMessage.count == 0 && UIApplication.shared.windows.indices.contains(0) {
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
}

