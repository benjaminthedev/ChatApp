//
//  Constants.swift
//  ChatApp
//
//  Created by Benjamin on 21/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL CONSTANTS
//Need to check slashes at the end - are these correct? Able to connect but not populate the DB :(
let BASE_URL = "https://chattydb.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Colours
let smackPurplePlaceholder = #colorLiteral(red: 0, green: 0.01720350397, blue: 1, alpha: 1)

//Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//User Defaults Baby!   

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Header
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]



