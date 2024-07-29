//
//  File.swift
//  
//
//  Created by Ondrej Basler on 29.07.2024.
//

import Foundation

@objc public class PianoAnalyticsObjC: NSObject {
    @objc public class func initialize(collectDomain: String, site: Int) {
        pa.setConfiguration(ConfigurationBuilder()
            .withCollectDomain(collectDomain)
            .withSite(site)
            .build()
        )
    }
    
    @objc public class func sendEvent(name: String, data: [String: Any]) {
        pa.sendEvent(Event(name, data: data))
    }
}

