//
// Created by elect on 29/09/19.
//

import Foundation
import SwiftShims
import vulkan

internal func CHECK(_ res: VkResult) throws {
    let res = Result(rawValue: res.rawValue)!
    if res != .success {
        throw res
    }
}

internal func CHECK_F(_ res: VkResult) {
    let res = Result(rawValue: res.rawValue)!
    if res != .success {
        fatalError()
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

extension Optional {
    public func withOptionalUnsafeBufferPointer<Element, Result>(_ body: (UnsafeBufferPointer<Element>?) -> Result) -> Result where Wrapped == Array<Element> {
        self?.withUnsafeBufferPointer(body) ?? body(nil)
    }
}

//public extension Optional where Wrapped: Collection {
//
//    public func withOptionalUnsafeBufferPointer<T, R>(_ body: (UnsafePointer<T>?) -> R) -> R {
//        (self as? [T])?.withUnsafeBufferPointer(body) ?? body(nil)
//    }
//}

//extension String {
//
//    var ref: UnsafePointer<Int8> {
//        var s = self
//        return UnsafePointer(&s)
//    }
//}

/// Compute the prefix sum of `seq`.
public func scan<S: Sequence, U>(_ seq: S, _ initial: U, _ combine: (U, S.Iterator.Element) -> U) -> [U] {
    var result: [U] = []
    result.reserveCapacity(seq.underestimatedCount)
    var runningResult = initial
    for element in seq {
        runningResult = combine(runningResult, element)
        result.append(runningResult)
    }
    return result
}

public func withArrayOfCStrings<R>(
        _ args: [String],
        _ body: ([UnsafePointer<CChar>?]) -> R) -> R {

    let argsCounts = Array(args.map {
        $0.utf8.count + 1
    })
    let argsOffsets = [0] + scan(argsCounts, 0, +)
    let argsBufferSize = argsOffsets.last!

    var argsBuffer: [UInt8] = []
    argsBuffer.reserveCapacity(argsBufferSize)
    for arg in args {
        argsBuffer.append(contentsOf: arg.utf8)
        argsBuffer.append(0)
    }

    return argsBuffer.withUnsafeBufferPointer {
        (argsBuffer) in
        let ptr = UnsafeRawPointer(argsBuffer.baseAddress!)
                .bindMemory(to: CChar.self, capacity: argsBuffer.count)
        var cStrings: [UnsafePointer<CChar>?] = argsOffsets.map {
            ptr + $0
        }
        cStrings[cStrings.count - 1] = nil
        return body(cStrings)
    }
}

extension UInt32 {

    init(_ bool: Bool) {
        if bool {
            self.init(1)
        } else {
            self.init(0)
        }
    }
}

extension Bool {

    init(_ uint32: UInt32) {
        if uint32 == 1 {
            self.init(true)
        } else {
            self.init(false)
        }
    }
}

typealias Tuple16_UInt8 = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias Tuple256_Int8 = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
typealias tuple32_VkMemoryType = (VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType)
typealias tuple16_VkMemoryHeap = (VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap)