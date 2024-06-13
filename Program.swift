// Program.swift
// Created by
// Created on

import Foundation
import Vapor
import Leaf

func routes(_ app: Application) throws {

    app.get { req in
        req.leaf.render(template: "index", context: [
            "title": "Hi",
            "body": "Hello world!"
        ])
    }
}