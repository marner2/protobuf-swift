/// Generated by the Protocol Buffers 3.3.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.20
/// Source file "unittest_no_arena_import.proto"
/// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension Proto2ArenaUnittest{}

public extension Proto2ArenaUnittest {
    public struct UnittestNoArenaImportRoot {
        public static let `default` = UnittestNoArenaImportRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    final public class ImportNoArenaNestedMessage : GeneratedMessage {
        public typealias BuilderType = Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder

        public static func == (lhs: Proto2ArenaUnittest.ImportNoArenaNestedMessage, rhs: Proto2ArenaUnittest.ImportNoArenaNestedMessage) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        public fileprivate(set) var d:Int32! = nil
        public fileprivate(set) var hasD:Bool = false

        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasD {
                try codedOutputStream.writeInt32(fieldNumber: 1, value:d)
            }
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            if hasD {
                serialize_size += d.computeInt32Size(fieldNumber: 1)
            }
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
            return Proto2ArenaUnittest.ImportNoArenaNestedMessage.classBuilder() as! Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder
        }
        public func getBuilder() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
            return classBuilder() as! Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
        }
        public func toBuilder() throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
            return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Proto2ArenaUnittest.ImportNoArenaNestedMessage) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
            return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasD {
                jsonMap["d"] = Int(d)
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
            return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
            return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasD {
                output += "\(indent) d: \(d) \n"
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasD {
                    hashCode = (hashCode &* 31) &+ d.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Proto2ArenaUnittest.ImportNoArenaNestedMessage"
        }
        override public func className() -> String {
            return "Proto2ArenaUnittest.ImportNoArenaNestedMessage"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Proto2ArenaUnittest.ImportNoArenaNestedMessage = Proto2ArenaUnittest.ImportNoArenaNestedMessage()
            public func getMessage() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            public var d:Int32 {
                get {
                    return builderResult.d
                }
                set (value) {
                    builderResult.hasD = true
                    builderResult.d = value
                }
            }
            public var hasD:Bool {
                get {
                    return builderResult.hasD
                }
            }
            @discardableResult
            public func setD(_ value:Int32) -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                self.d = value
                return self
            }
            @discardableResult
            public func clearD() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder{
                builderResult.hasD = false
                builderResult.d = nil
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                builderResult = Proto2ArenaUnittest.ImportNoArenaNestedMessage()
                return self
            }
            override public func clone() throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
                let returnMe:Proto2ArenaUnittest.ImportNoArenaNestedMessage = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Proto2ArenaUnittest.ImportNoArenaNestedMessage) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                if other == Proto2ArenaUnittest.ImportNoArenaNestedMessage() {
                    return self
                }
                if other.hasD {
                    d = other.d
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 8:
                        d = try codedInputStream.readInt32()

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                let resultDecodedBuilder = Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
                if let jsonValueD = jsonMap["d"] as? Int {
                    resultDecodedBuilder.d = Int32(jsonValueD)
                } else if let jsonValueD = jsonMap["d"] as? String {
                    resultDecodedBuilder.d = Int32(jsonValueD)!
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Proto2ArenaUnittest.ImportNoArenaNestedMessage: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage> {
        var mergedArray = Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage? {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(data: data, extensionRegistry:Proto2ArenaUnittest.UnittestNoArenaImportRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "d": return self.d
        default: return nil
        }
    }
}
extension Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Proto2ArenaUnittest.ImportNoArenaNestedMessage
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "d": return self.d
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "d":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.d = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
