// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_struct.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public func == (lhs: UnitTestStruct, rhs: UnitTestStruct) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasTestStr == rhs.hasTestStr) && (!lhs.hasTestStr || lhs.testStr == rhs.testStr)
  fieldCheck = fieldCheck && (lhs.hasTestInt == rhs.hasTestInt) && (!lhs.hasTestInt || lhs.testInt == rhs.testInt)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public struct UnittestStructRoot {
  public static var sharedInstance : UnittestStructRoot {
   struct Static {
       static let instance : UnittestStructRoot = UnittestStructRoot()
   }
   return Static.instance
  }
  public var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(registry: extensionRegistry)
    Google.Protobuf.SwiftDescriptorRoot.sharedInstance.registerAllExtensions(registry: extensionRegistry)
  }
  public func registerAllExtensions(registry: ExtensionRegistry) {
  }
}

final public class UnitTestStruct : GeneratedMessage {
  public fileprivate(set) var testStr:String = ""
  public fileprivate(set) var hasTestStr:Bool = false

  public fileprivate(set) var testInt:Int32 = Int32(0)
  public fileprivate(set) var hasTestInt:Bool = false

  required public init() {
       super.init()
  }
  override public func isInitialized() -> Bool {
   return true
  }
  override public func writeTo(codedOutputStream: CodedOutputStream) throws {
    if hasTestStr {
      try codedOutputStream.writeString(fieldNumber: 1, value:testStr)
    }
    if hasTestInt {
      try codedOutputStream.writeInt32(fieldNumber: 2, value:testInt)
    }
    try unknownFields.writeTo(codedOutputStream: codedOutputStream)
  }
  override public func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasTestStr {
      serialize_size += testStr.computeStringSize(fieldNumber: 1)
    }
    if hasTestInt {
      serialize_size += testInt.computeInt32Size(fieldNumber: 2)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  public class func getBuilder() -> UnitTestStruct.Builder {
    return UnitTestStruct.classBuilder() as! UnitTestStruct.Builder
  }
  public func getBuilder() -> UnitTestStruct.Builder {
    return classBuilder() as! UnitTestStruct.Builder
  }
  override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
    return UnitTestStruct.Builder()
  }
  override public func classBuilder() -> ProtocolBuffersMessageBuilder {
    return UnitTestStruct.Builder()
  }
  public func toBuilder() throws -> UnitTestStruct.Builder {
    return try UnitTestStruct.builderWithPrototype(prototype:self)
  }
  public class func builderWithPrototype(prototype:UnitTestStruct) throws -> UnitTestStruct.Builder {
    return try UnitTestStruct.Builder().mergeFrom(other:prototype)
  }
  override public func encode() throws -> Dictionary<String,Any> {
    guard isInitialized() else {
      throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
    }

    var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
    if hasTestStr {
      jsonMap["testStr"] = testStr
    }
    if hasTestInt {
      jsonMap["testInt"] = NSNumber(value:testInt)
    }
    return jsonMap
  }
  override class public func decode(jsonMap:Dictionary<String,Any>) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder.decodeToBuilder(jsonMap:jsonMap).build()
  }
  override class public func fromJSON(data:Data) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder.fromJSONToBuilder(data:data).build()
  }
  override public func getDescription(indent:String) throws -> String {
    var output = ""
    if hasTestStr {
      output += "\(indent) testStr: \(testStr) \n"
    }
    if hasTestInt {
      output += "\(indent) testInt: \(testInt) \n"
    }
    output += unknownFields.getDescription(indent: indent)
    return output
  }
  override public var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasTestStr {
             hashCode = (hashCode &* 31) &+ testStr.hashValue
          }
          if hasTestInt {
             hashCode = (hashCode &* 31) &+ testInt.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override public class func className() -> String {
      return "UnitTestStruct"
  }
  override public func className() -> String {
      return "UnitTestStruct"
  }
  //Meta information declaration end

  final public class Builder : GeneratedMessageBuilder {
    fileprivate var builderResult:UnitTestStruct = UnitTestStruct()
    public func getMessage() -> UnitTestStruct {
        return builderResult
    }

    required override public init () {
       super.init()
    }
    public var hasTestStr:Bool {
         get {
              return builderResult.hasTestStr
         }
    }
    public var testStr:String {
         get {
              return builderResult.testStr
         }
         set (value) {
             builderResult.hasTestStr = true
             builderResult.testStr = value
         }
    }
    public func setTestStr(_ value:String) -> UnitTestStruct.Builder {
      self.testStr = value
      return self
    }
    public func clearTestStr() -> UnitTestStruct.Builder{
         builderResult.hasTestStr = false
         builderResult.testStr = ""
         return self
    }
    public var hasTestInt:Bool {
         get {
              return builderResult.hasTestInt
         }
    }
    public var testInt:Int32 {
         get {
              return builderResult.testInt
         }
         set (value) {
             builderResult.hasTestInt = true
             builderResult.testInt = value
         }
    }
    public func setTestInt(_ value:Int32) -> UnitTestStruct.Builder {
      self.testInt = value
      return self
    }
    public func clearTestInt() -> UnitTestStruct.Builder{
         builderResult.hasTestInt = false
         builderResult.testInt = Int32(0)
         return self
    }
    override public var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    override public func clear() -> UnitTestStruct.Builder {
      builderResult = UnitTestStruct()
      return self
    }
    override public func clone() throws -> UnitTestStruct.Builder {
      return try UnitTestStruct.builderWithPrototype(prototype:builderResult)
    }
    override public func build() throws -> UnitTestStruct {
         try checkInitialized()
         return buildPartial()
    }
    public func buildPartial() -> UnitTestStruct {
      let returnMe:UnitTestStruct = builderResult
      return returnMe
    }
    public func mergeFrom(other:UnitTestStruct) throws -> UnitTestStruct.Builder {
      if other == UnitTestStruct() {
       return self
      }
      if other.hasTestStr {
           testStr = other.testStr
      }
      if other.hasTestInt {
           testInt = other.testInt
      }
      _ = try merge(unknownField: other.unknownFields)
      return self
    }
    override public func mergeFrom(codedInputStream: CodedInputStream) throws -> UnitTestStruct.Builder {
         return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
    }
    override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> UnitTestStruct.Builder {
      let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
      while (true) {
        let protobufTag = try codedInputStream.readTag()
        switch protobufTag {
        case 0: 
          self.unknownFields = try unknownFieldsBuilder.build()
          return self

        case 10:
          testStr = try codedInputStream.readString()

        case 16:
          testInt = try codedInputStream.readInt32()

        default:
          if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
             unknownFields = try unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
    class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> UnitTestStruct.Builder {
      let resultDecodedBuilder = UnitTestStruct.Builder()
      if let jsonValueTestStr = jsonMap["testStr"] as? String {
        resultDecodedBuilder.testStr = jsonValueTestStr
      }
      if let jsonValueTestInt = jsonMap["testInt"] as? NSNumber {
        resultDecodedBuilder.testInt = jsonValueTestInt.int32Value
      }
      return resultDecodedBuilder
    }
    override class public func fromJSONToBuilder(data:Data) throws -> UnitTestStruct.Builder {
      let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
      guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
      }
      return try UnitTestStruct.Builder.decodeToBuilder(jsonMap:jsDataCast)
    }
  }

}

extension UnitTestStruct: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<UnitTestStruct> {
    var mergedArray = Array<UnitTestStruct>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> UnitTestStruct? {
    return try UnitTestStruct.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder().mergeFrom(data: data, extensionRegistry:UnittestStructRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> UnitTestStruct {
    return try UnitTestStruct.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
