//
//  BarcodeHandler.swift
//  abc_upi_mobile_scanner
//
//  Created by Ram Mohan Annamalai on 09/11/2023.
//

import Foundation

public class BarcodeHandler: NSObject, FlutterStreamHandler {
    
    var event: [String: Any?] = [:]
    
    private var eventSink: FlutterEventSink?
    private let eventChannel: FlutterEventChannel
    
    init(registrar: FlutterPluginRegistrar) {
        eventChannel = FlutterEventChannel(name:
                                            "dev.adityabirlacapital.abc_upi_mobile_scanner/scanner/event", binaryMessenger: registrar.messenger())
        super.init()
        eventChannel.setStreamHandler(self)
    }
    
    func publishEvent(_ event: [String: Any?]) {
        self.event = event
        eventSink?(event)
    }
    
    public func onListen(withArguments arguments: Any?,
                         eventSink: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = eventSink
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
}
