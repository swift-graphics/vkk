//
// Created by elect on 29/09/19.
//

import Foundation
import SwiftShims

public extension String {

    var ptr: UnsafePointer<Int8> {
        let count = utf8CString.count
        let result: UnsafeMutableBufferPointer<Int8> = UnsafeMutableBufferPointer<Int8>.allocate(capacity: count)
        result.initialize(from: utf8CString)
        return UnsafePointer<Int8>(result.baseAddress!)
    }
}

public extension Optional where Wrapped == String {

    func withPtr<R>(_ block: (UnsafePointer<Int8>?) -> R) -> R {
        if let val = self {
            return val.withCString(block)
        }
        return block(nil)
    }
}

//public func withArrayOfCStrings<R>(
//        _ args: [String],
//        _ body: ([UnsafeMutablePointer<CChar>?]) -> R) -> R {
//
//    let argsCounts = Array(args.map {
//        $0.utf8.count + 1
//    })
//    let argsOffsets = [0] + scan(argsCounts, 0, +)
//    let argsBufferSize = argsOffsets.last!
//
//    var argsBuffer: [UInt8] = []
//    argsBuffer.reserveCapacity(argsBufferSize)
//    for arg in args {
//        argsBuffer.append(contentsOf: arg.utf8)
//        argsBuffer.append(0)
//    }
//
//    return argsBuffer.withUnsafeMutableBufferPointer {
//        (argsBuffer) in
//        let ptr = UnsafeMutableRawPointer(argsBuffer.baseAddress!)
//                .bindMemory(to: CChar.self, capacity: argsBuffer.count)
//        var cStrings: [UnsafeMutablePointer<CChar>?] = argsOffsets.map {
//            ptr + $0
//        }
//        cStrings[cStrings.count - 1] = nil
//        return body(cStrings)
//    }
//}

extension UInt32 {

    init(_ bool: Bool) {
        if bool {
            self.init(1)
        } else {
            self.init(0)
        }
    }
}