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
let BASE_URL = "https://chattydb.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"



//User Defaults Baby!

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


