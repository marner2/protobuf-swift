// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_drop_unknown_fields.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UnittestDropUnknownFields { }

public func == (lhs: UnittestDropUnknownFields.Foo, rhs: UnittestDropUnknownFields.Foo) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasInt32Value == rhs.hasInt32Value) && (!lhs.hasInt32Value || lhs.int32Value == rhs.int32Value)
  fieldCheck = fieldCheck && (lhs.hasEnumValue == rhs.hasEnumValue) && (!lhs.hasEnumValue || lhs.enumValue == rhs.enumValue)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public func == (lhs: UnittestDropUnknownFields.FooWithExtraFields, rhs: UnittestDropUnknownFields.FooWithExtraFields) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasInt32Value == rhs.hasInt32Value) && (!lhs.hasInt32Value || lhs.int32Value == rhs.int32Value)
  fieldCheck = fieldCheck && (lhs.hasEnumValue == rhs.hasEnumValue) && (!lhs.hasEnumValue || lhs.enumValue == rhs.enumValue)
  fieldCheck = fieldCheck && (lhs.hasExtraInt32Value == rhs.hasExtraInt32Value) && (!lhs.hasExtraInt32Value || lhs.extraInt32Value == rhs.extraInt32Value)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension UnittestDropUnknownFields {
  public struct UnittestDropUnknownFieldsRoot {
    public static var sharedInstance : UnittestDropUnknownFieldsRoot {
     struct Static {
         static let instance : UnittestDropUnknownFieldsRoot = UnittestDropUnknownFieldsRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class Foo : GeneratedMessage {


      //Enum type declaration start 

      public enum NestedEnum:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case foo = 0
        case bar = 1
        case baz = 2
        public func toString() -> String {
          switch self {
          case .foo: return "FOO"
          case .bar: return "BAR"
          case .baz: return "BAZ"
          }
        }
        public static func fromString(str:String) throws -> UnittestDropUnknownFields.Foo.NestedEnum {
          switch str {
          case "FOO":  return .foo
          case "BAR":  return .bar
          case "BAZ":  return .baz
          default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
          switch self {
          case .foo: return ".foo"
          case .bar: return ".bar"
          case .baz: return ".baz"
          }
        }
      }

      //Enum type declaration end 

    public fileprivate(set) var int32Value:Int32 = Int32(0)
    public fileprivate(set) var hasInt32Value:Bool = false

    public fileprivate(set) var enumValue:UnittestDropUnknownFields.Foo.NestedEnum = UnittestDropUnknownFields.Foo.NestedEnum.foo
    public fileprivate(set) var hasEnumValue:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasInt32Value {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:int32Value)
      }
      if hasEnumValue {
        try codedOutputStream.writeEnum(fieldNumber: 2, value:enumValue.rawValue)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasInt32Value {
        serialize_size += int32Value.computeInt32Size(fieldNumber: 1)
      }
      if (hasEnumValue) {
        serialize_size += enumValue.rawValue.computeEnumSize(fieldNumber: 2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> UnittestDropUnknownFields.Foo.Builder {
      return UnittestDropUnknownFields.Foo.classBuilder() as! UnittestDropUnknownFields.Foo.Builder
    }
    public func getBuilder() -> UnittestDropUnknownFields.Foo.Builder {
      return classBuilder() as! UnittestDropUnknownFields.Foo.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return UnittestDropUnknownFields.Foo.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return UnittestDropUnknownFields.Foo.Builder()
    }
    public func toBuilder() throws -> UnittestDropUnknownFields.Foo.Builder {
      return try UnittestDropUnknownFields.Foo.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:UnittestDropUnknownFields.Foo) throws -> UnittestDropUnknownFields.Foo.Builder {
      return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasInt32Value {
        jsonMap["int32Value"] = NSNumber(value:int32Value)
      }
      if hasEnumValue {
        jsonMap["enumValue"] = enumValue.toString()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> UnittestDropUnknownFields.Foo {
      return try UnittestDropUnknownFields.Foo.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> UnittestDropUnknownFields.Foo {
      return try UnittestDropUnknownFields.Foo.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasInt32Value {
        output += "\(indent) int32Value: \(int32Value) \n"
      }
      if (hasEnumValue) {
        output += "\(indent) enumValue: \(enumValue.description)\n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasInt32Value {
               hashCode = (hashCode &* 31) &+ int32Value.hashValue
            }
            if hasEnumValue {
               hashCode = (hashCode &* 31) &+ Int(enumValue.rawValue)
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "UnittestDropUnknownFields.Foo"
    }
    override public func className() -> String {
        return "UnittestDropUnknownFields.Foo"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:UnittestDropUnknownFields.Foo = UnittestDropUnknownFields.Foo()
      public func getMessage() -> UnittestDropUnknownFields.Foo {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasInt32Value:Bool {
           get {
                return builderResult.hasInt32Value
           }
      }
      public var int32Value:Int32 {
           get {
                return builderResult.int32Value
           }
           set (value) {
               builderResult.hasInt32Value = true
               builderResult.int32Value = value
           }
      }
      public func setInt32Value(_ value:Int32) -> UnittestDropUnknownFields.Foo.Builder {
        self.int32Value = value
        return self
      }
      public func clearInt32Value() -> UnittestDropUnknownFields.Foo.Builder{
           builderResult.hasInt32Value = false
           builderResult.int32Value = Int32(0)
           return self
      }
        public var hasEnumValue:Bool{
            get {
                return builderResult.hasEnumValue
            }
        }
        public var enumValue:UnittestDropUnknownFields.Foo.NestedEnum {
            get {
                return builderResult.enumValue
            }
            set (value) {
                builderResult.hasEnumValue = true
                builderResult.enumValue = value
            }
        }
        public func setEnumValue(_ value:UnittestDropUnknownFields.Foo.NestedEnum) -> UnittestDropUnknownFields.Foo.Builder {
          self.enumValue = value
          return self
        }
        public func clearEnumValue() -> UnittestDropUnknownFields.Foo.Builder {
           builderResult.hasEnumValue = false
           builderResult.enumValue = .foo
           return self
        }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> UnittestDropUnknownFields.Foo.Builder {
        builderResult = UnittestDropUnknownFields.Foo()
        return self
      }
      override public func clone() throws -> UnittestDropUnknownFields.Foo.Builder {
        return try UnittestDropUnknownFields.Foo.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> UnittestDropUnknownFields.Foo {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> UnittestDropUnknownFields.Foo {
        let returnMe:UnittestDropUnknownFields.Foo = builderResult
        return returnMe
      }
      public func mergeFrom(other:UnittestDropUnknownFields.Foo) throws -> UnittestDropUnknownFields.Foo.Builder {
        if other == UnittestDropUnknownFields.Foo() {
         return self
        }
        if other.hasInt32Value {
             int32Value = other.int32Value
        }
        if other.hasEnumValue {
             enumValue = other.enumValue
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> UnittestDropUnknownFields.Foo.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.Foo.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            int32Value = try codedInputStream.readInt32()

          case 16:
            let valueIntenumValue = try codedInputStream.readEnum()
            if let enumsenumValue = UnittestDropUnknownFields.Foo.NestedEnum(rawValue:valueIntenumValue){
                 enumValue = enumsenumValue
            } else {
                 _ = try unknownFieldsBuilder.mergeVarintField(fieldNumber: 2, value:Int64(valueIntenumValue))
            }

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> UnittestDropUnknownFields.Foo.Builder {
        let resultDecodedBuilder = UnittestDropUnknownFields.Foo.Builder()
        if let jsonValueInt32Value = jsonMap["int32Value"] as? NSNumber {
          resultDecodedBuilder.int32Value = jsonValueInt32Value.int32Value
        }
        if let jsonValueEnumValue = jsonMap["enumValue"] as? String {
          resultDecodedBuilder.enumValue = try UnittestDropUnknownFields.Foo.NestedEnum.fromString(str: jsonValueEnumValue)
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> UnittestDropUnknownFields.Foo.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try UnittestDropUnknownFields.Foo.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

  final public class FooWithExtraFields : GeneratedMessage {


      //Enum type declaration start 

      public enum NestedEnum:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case foo = 0
        case bar = 1
        case baz = 2
        case qux = 3
        public func toString() -> String {
          switch self {
          case .foo: return "FOO"
          case .bar: return "BAR"
          case .baz: return "BAZ"
          case .qux: return "QUX"
          }
        }
        public static func fromString(str:String) throws -> UnittestDropUnknownFields.FooWithExtraFields.NestedEnum {
          switch str {
          case "FOO":  return .foo
          case "BAR":  return .bar
          case "BAZ":  return .baz
          case "QUX":  return .qux
          default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
          switch self {
          case .foo: return ".foo"
          case .bar: return ".bar"
          case .baz: return ".baz"
          case .qux: return ".qux"
          }
        }
      }

      //Enum type declaration end 

    public fileprivate(set) var int32Value:Int32 = Int32(0)
    public fileprivate(set) var hasInt32Value:Bool = false

    public fileprivate(set) var enumValue:UnittestDropUnknownFields.FooWithExtraFields.NestedEnum = UnittestDropUnknownFields.FooWithExtraFields.NestedEnum.foo
    public fileprivate(set) var hasEnumValue:Bool = false
    public fileprivate(set) var extraInt32Value:Int32 = Int32(0)
    public fileprivate(set) var hasExtraInt32Value:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasInt32Value {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:int32Value)
      }
      if hasEnumValue {
        try codedOutputStream.writeEnum(fieldNumber: 2, value:enumValue.rawValue)
      }
      if hasExtraInt32Value {
        try codedOutputStream.writeInt32(fieldNumber: 3, value:extraInt32Value)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasInt32Value {
        serialize_size += int32Value.computeInt32Size(fieldNumber: 1)
      }
      if (hasEnumValue) {
        serialize_size += enumValue.rawValue.computeEnumSize(fieldNumber: 2)
      }
      if hasExtraInt32Value {
        serialize_size += extraInt32Value.computeInt32Size(fieldNumber: 3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
      return UnittestDropUnknownFields.FooWithExtraFields.classBuilder() as! UnittestDropUnknownFields.FooWithExtraFields.Builder
    }
    public func getBuilder() -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
      return classBuilder() as! UnittestDropUnknownFields.FooWithExtraFields.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return UnittestDropUnknownFields.FooWithExtraFields.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return UnittestDropUnknownFields.FooWithExtraFields.Builder()
    }
    public func toBuilder() throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
      return try UnittestDropUnknownFields.FooWithExtraFields.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:UnittestDropUnknownFields.FooWithExtraFields) throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
      return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasInt32Value {
        jsonMap["int32Value"] = NSNumber(value:int32Value)
      }
      if hasEnumValue {
        jsonMap["enumValue"] = enumValue.toString()
      }
      if hasExtraInt32Value {
        jsonMap["extraInt32Value"] = NSNumber(value:extraInt32Value)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> UnittestDropUnknownFields.FooWithExtraFields {
      return try UnittestDropUnknownFields.FooWithExtraFields.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> UnittestDropUnknownFields.FooWithExtraFields {
      return try UnittestDropUnknownFields.FooWithExtraFields.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasInt32Value {
        output += "\(indent) int32Value: \(int32Value) \n"
      }
      if (hasEnumValue) {
        output += "\(indent) enumValue: \(enumValue.description)\n"
      }
      if hasExtraInt32Value {
        output += "\(indent) extraInt32Value: \(extraInt32Value) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasInt32Value {
               hashCode = (hashCode &* 31) &+ int32Value.hashValue
            }
            if hasEnumValue {
               hashCode = (hashCode &* 31) &+ Int(enumValue.rawValue)
            }
            if hasExtraInt32Value {
               hashCode = (hashCode &* 31) &+ extraInt32Value.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "UnittestDropUnknownFields.FooWithExtraFields"
    }
    override public func className() -> String {
        return "UnittestDropUnknownFields.FooWithExtraFields"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:UnittestDropUnknownFields.FooWithExtraFields = UnittestDropUnknownFields.FooWithExtraFields()
      public func getMessage() -> UnittestDropUnknownFields.FooWithExtraFields {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasInt32Value:Bool {
           get {
                return builderResult.hasInt32Value
           }
      }
      public var int32Value:Int32 {
           get {
                return builderResult.int32Value
           }
           set (value) {
               builderResult.hasInt32Value = true
               builderResult.int32Value = value
           }
      }
      public func setInt32Value(_ value:Int32) -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        self.int32Value = value
        return self
      }
      public func clearInt32Value() -> UnittestDropUnknownFields.FooWithExtraFields.Builder{
           builderResult.hasInt32Value = false
           builderResult.int32Value = Int32(0)
           return self
      }
        public var hasEnumValue:Bool{
            get {
                return builderResult.hasEnumValue
            }
        }
        public var enumValue:UnittestDropUnknownFields.FooWithExtraFields.NestedEnum {
            get {
                return builderResult.enumValue
            }
            set (value) {
                builderResult.hasEnumValue = true
                builderResult.enumValue = value
            }
        }
        public func setEnumValue(_ value:UnittestDropUnknownFields.FooWithExtraFields.NestedEnum) -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
          self.enumValue = value
          return self
        }
        public func clearEnumValue() -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
           builderResult.hasEnumValue = false
           builderResult.enumValue = .foo
           return self
        }
      public var hasExtraInt32Value:Bool {
           get {
                return builderResult.hasExtraInt32Value
           }
      }
      public var extraInt32Value:Int32 {
           get {
                return builderResult.extraInt32Value
           }
           set (value) {
               builderResult.hasExtraInt32Value = true
               builderResult.extraInt32Value = value
           }
      }
      public func setExtraInt32Value(_ value:Int32) -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        self.extraInt32Value = value
        return self
      }
      public func clearExtraInt32Value() -> UnittestDropUnknownFields.FooWithExtraFields.Builder{
           builderResult.hasExtraInt32Value = false
           builderResult.extraInt32Value = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        builderResult = UnittestDropUnknownFields.FooWithExtraFields()
        return self
      }
      override public func clone() throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        return try UnittestDropUnknownFields.FooWithExtraFields.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> UnittestDropUnknownFields.FooWithExtraFields {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> UnittestDropUnknownFields.FooWithExtraFields {
        let returnMe:UnittestDropUnknownFields.FooWithExtraFields = builderResult
        return returnMe
      }
      public func mergeFrom(other:UnittestDropUnknownFields.FooWithExtraFields) throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        if other == UnittestDropUnknownFields.FooWithExtraFields() {
         return self
        }
        if other.hasInt32Value {
             int32Value = other.int32Value
        }
        if other.hasEnumValue {
             enumValue = other.enumValue
        }
        if other.hasExtraInt32Value {
             extraInt32Value = other.extraInt32Value
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            int32Value = try codedInputStream.readInt32()

          case 16:
            let valueIntenumValue = try codedInputStream.readEnum()
            if let enumsenumValue = UnittestDropUnknownFields.FooWithExtraFields.NestedEnum(rawValue:valueIntenumValue){
                 enumValue = enumsenumValue
            } else {
                 _ = try unknownFieldsBuilder.mergeVarintField(fieldNumber: 2, value:Int64(valueIntenumValue))
            }

          case 24:
            extraInt32Value = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        let resultDecodedBuilder = UnittestDropUnknownFields.FooWithExtraFields.Builder()
        if let jsonValueInt32Value = jsonMap["int32Value"] as? NSNumber {
          resultDecodedBuilder.int32Value = jsonValueInt32Value.int32Value
        }
        if let jsonValueEnumValue = jsonMap["enumValue"] as? String {
          resultDecodedBuilder.enumValue = try UnittestDropUnknownFields.FooWithExtraFields.NestedEnum.fromString(str: jsonValueEnumValue)
        }
        if let jsonValueExtraInt32Value = jsonMap["extraInt32Value"] as? NSNumber {
          resultDecodedBuilder.extraInt32Value = jsonValueExtraInt32Value.int32Value
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> UnittestDropUnknownFields.FooWithExtraFields.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try UnittestDropUnknownFields.FooWithExtraFields.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension UnittestDropUnknownFields.Foo: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<UnittestDropUnknownFields.Foo> {
    var mergedArray = Array<UnittestDropUnknownFields.Foo>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> UnittestDropUnknownFields.Foo? {
    return try UnittestDropUnknownFields.Foo.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> UnittestDropUnknownFields.Foo {
    return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(data: data, extensionRegistry:UnittestDropUnknownFields.UnittestDropUnknownFieldsRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.Foo {
    return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> UnittestDropUnknownFields.Foo {
    return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.Foo {
    return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> UnittestDropUnknownFields.Foo {
    return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.Foo {
    return try UnittestDropUnknownFields.Foo.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}
extension UnittestDropUnknownFields.FooWithExtraFields: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<UnittestDropUnknownFields.FooWithExtraFields> {
    var mergedArray = Array<UnittestDropUnknownFields.FooWithExtraFields>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> UnittestDropUnknownFields.FooWithExtraFields? {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> UnittestDropUnknownFields.FooWithExtraFields {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(data: data, extensionRegistry:UnittestDropUnknownFields.UnittestDropUnknownFieldsRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.FooWithExtraFields {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> UnittestDropUnknownFields.FooWithExtraFields {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.FooWithExtraFields {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> UnittestDropUnknownFields.FooWithExtraFields {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> UnittestDropUnknownFields.FooWithExtraFields {
    return try UnittestDropUnknownFields.FooWithExtraFields.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
