// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_lite_imports_nonlite.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension ProtobufUnittest{}

public func == (lhs: ProtobufUnittest.TestLiteImportsNonlite, rhs: ProtobufUnittest.TestLiteImportsNonlite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasMessage == rhs.hasMessage) && (!lhs.hasMessage || lhs.message == rhs.message)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittest {
  public struct UnittestLiteImportsNonliteRoot {
    public static var sharedInstance : UnittestLiteImportsNonliteRoot {
     struct Static {
         static let instance : UnittestLiteImportsNonliteRoot = UnittestLiteImportsNonliteRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      ProtobufUnittest.UnittestRoot.sharedInstance.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class TestLiteImportsNonlite : GeneratedMessage {
    public fileprivate(set) var message:ProtobufUnittest.TestAllTypes!
    public fileprivate(set) var hasMessage:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasMessage {
        try codedOutputStream.writeMessage(fieldNumber: 1, value:message)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasMessage {
          if let varSizemessage = message?.computeMessageSize(fieldNumber: 1) {
              serialize_size += varSizemessage
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return ProtobufUnittest.TestLiteImportsNonlite.classBuilder() as! ProtobufUnittest.TestLiteImportsNonlite.Builder
    }
    public func getBuilder() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return classBuilder() as! ProtobufUnittest.TestLiteImportsNonlite.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittest.TestLiteImportsNonlite.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittest.TestLiteImportsNonlite.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return try ProtobufUnittest.TestLiteImportsNonlite.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittest.TestLiteImportsNonlite) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasMessage {
        jsonMap["message"] = try message.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasMessage {
        output += "\(indent) message {\n"
        if let outDescMessage = message {
          output += try outDescMessage.getDescription(indent: "\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasMessage {
                if let hashValuemessage = message?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuemessage
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittest.TestLiteImportsNonlite"
    }
    override public func className() -> String {
        return "ProtobufUnittest.TestLiteImportsNonlite"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:ProtobufUnittest.TestLiteImportsNonlite = ProtobufUnittest.TestLiteImportsNonlite()
      public func getMessage() -> ProtobufUnittest.TestLiteImportsNonlite {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasMessage:Bool {
           get {
               return builderResult.hasMessage
           }
      }
      public var message:ProtobufUnittest.TestAllTypes! {
           get {
               if messageBuilder_ != nil {
                  builderResult.message = messageBuilder_.getMessage()
               }
               return builderResult.message
           }
           set (value) {
               builderResult.hasMessage = true
               builderResult.message = value
           }
      }
      fileprivate var messageBuilder_:ProtobufUnittest.TestAllTypes.Builder! {
           didSet {
              builderResult.hasMessage = true
           }
      }
      public func getMessageBuilder() -> ProtobufUnittest.TestAllTypes.Builder {
        if messageBuilder_ == nil {
           messageBuilder_ = ProtobufUnittest.TestAllTypes.Builder()
           builderResult.message = messageBuilder_.getMessage()
           if message != nil {
              _ = try! messageBuilder_.mergeFrom(other: message)
           }
        }
        return messageBuilder_
      }
      public func setMessage(_ value:ProtobufUnittest.TestAllTypes!) -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        self.message = value
        return self
      }
      public func mergeMessage(value:ProtobufUnittest.TestAllTypes) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        if builderResult.hasMessage {
          builderResult.message = try ProtobufUnittest.TestAllTypes.builderWithPrototype(prototype:builderResult.message).mergeFrom(other: value).buildPartial()
        } else {
          builderResult.message = value
        }
        builderResult.hasMessage = true
        return self
      }
      public func clearMessage() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        messageBuilder_ = nil
        builderResult.hasMessage = false
        builderResult.message = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        builderResult = ProtobufUnittest.TestLiteImportsNonlite()
        return self
      }
      override public func clone() throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        return try ProtobufUnittest.TestLiteImportsNonlite.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> ProtobufUnittest.TestLiteImportsNonlite {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittest.TestLiteImportsNonlite {
        let returnMe:ProtobufUnittest.TestLiteImportsNonlite = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittest.TestLiteImportsNonlite) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        if other == ProtobufUnittest.TestLiteImportsNonlite() {
         return self
        }
        if (other.hasMessage) {
            _ = try mergeMessage(value: other.message)
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:ProtobufUnittest.TestAllTypes.Builder = ProtobufUnittest.TestAllTypes.Builder()
            if hasMessage {
              _ = try subBuilder.mergeFrom(other: message)
            }
            try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
            message = subBuilder.buildPartial()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        let resultDecodedBuilder = ProtobufUnittest.TestLiteImportsNonlite.Builder()
        if let jsonValueMessage = jsonMap["message"] as? Dictionary<String,Any> {
          resultDecodedBuilder.message = try ProtobufUnittest.TestAllTypes.Builder.decodeToBuilder(jsonMap:jsonValueMessage).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittest.TestLiteImportsNonlite.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension ProtobufUnittest.TestLiteImportsNonlite: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittest.TestLiteImportsNonlite> {
    var mergedArray = Array<ProtobufUnittest.TestLiteImportsNonlite>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite? {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> ProtobufUnittest.TestLiteImportsNonlite {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittest.UnittestLiteImportsNonliteRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite {
    return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
