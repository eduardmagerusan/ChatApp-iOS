//
//  Constants.swift
//  ChatApp
//
//  Created by Eduard Magerusan on 23.08.22.
//

struct K {
    static let appName = "ChatApp"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let green = "BrandGreen"
        static let lightGrey = "BrandLightGrey"
        static let darkGrey = "BrandDarkGrey"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
