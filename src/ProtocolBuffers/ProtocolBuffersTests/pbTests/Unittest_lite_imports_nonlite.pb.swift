// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers

struct UnittestLiteImportsNonliteRoot {
  static var sharedInstance : UnittestLiteImportsNonliteRoot {
   struct Static {
       static let instance : UnittestLiteImportsNonliteRoot = UnittestLiteImportsNonliteRoot()
   }
   return Static.instance
  }
  var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
    UnittestRoot.sharedInstance.registerAllExtensions(extensionRegistry)
  }
  func registerAllExtensions(registry:ExtensionRegistry) {
  }
}

func == (lhs: TestLiteImportsNonlite, rhs: TestLiteImportsNonlite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasMessage == rhs.hasMessage) && (!lhs.hasMessage || lhs.message == rhs.message)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final public class TestLiteImportsNonlite : GeneratedMessage {
  private(set) var hasMessage:Bool = false
  private(set) var message:TestAllTypes = TestAllTypes()
  required public init() {
       super.init()
  }
  override public func isInitialized() -> Bool {
   return true
  }
  override public func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasMessage {
      output.writeMessage(1, value:message)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override public func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasMessage {
      size += WireFormat.computeMessageSize(1, value:message)
    }
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  class func parseFromData(data:[Byte]) -> TestLiteImportsNonlite {
    return TestLiteImportsNonlite.builder().mergeFromData(data).build()
  }
  class func parseFromData(data:[Byte], extensionRegistry:ExtensionRegistry) -> TestLiteImportsNonlite {
    return TestLiteImportsNonlite.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  class func parseFromInputStream(input:NSInputStream) -> TestLiteImportsNonlite {
    return TestLiteImportsNonlite.builder().mergeFromInputStream(input).build()
  }
  class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->TestLiteImportsNonlite {
    return TestLiteImportsNonlite.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  class func parseFromCodedInputStream(input:CodedInputStream) -> TestLiteImportsNonlite {
    return TestLiteImportsNonlite.builder().mergeFromCodedInputStream(input).build()
  }
  class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestLiteImportsNonlite {
    return TestLiteImportsNonlite.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  class func builder() -> TestLiteImportsNonliteBuilder {
    return TestLiteImportsNonliteBuilder()
  }
  class func builderWithPrototype(prototype:TestLiteImportsNonlite) -> TestLiteImportsNonliteBuilder {
    return TestLiteImportsNonlite.builder().mergeFrom(prototype)
  }
  func builder() -> TestLiteImportsNonliteBuilder {
    return TestLiteImportsNonlite.builder()
  }
  func toBuilder() -> TestLiteImportsNonliteBuilder {
    return TestLiteImportsNonlite.builderWithPrototype(self)
  }
  override public func writeDescriptionTo(inout output:String, indent:String) {
    if hasMessage {
      output += "\(indent) message {\n"
      message.writeDescriptionTo(&output, indent:"\(indent)  ")
      output += "\(indent) }\n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override public var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasMessage {
            hashCode = (hashCode &* 31) &+ message.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override public class func className() -> String {
      return "TestLiteImportsNonlite"
  }
  override public func className() -> String {
      return "TestLiteImportsNonlite"
  }
  override public func classMetaType() -> GeneratedMessage.Type {
      return TestLiteImportsNonlite.self
  }


  //Meta information declaration end

}

final class TestLiteImportsNonliteBuilder : GeneratedMessageBuilder {
  private var builderResult:TestLiteImportsNonlite

  required override init () {
     builderResult = TestLiteImportsNonlite()
     super.init()
  }
  var hasMessage:Bool {
       get {
           return builderResult.hasMessage
       }
  }
  var message:TestAllTypes {
       get {
           return builderResult.message
       }
       set (value) {
           builderResult.hasMessage = true
           builderResult.message = value
       }
  }
  func setMessageBuilder(builderForValue:TestAllTypesBuilder) -> TestLiteImportsNonliteBuilder {
    message = builderForValue.build()
    return self
  }
  func mergeMessage(value:TestAllTypes) -> TestLiteImportsNonliteBuilder {
    if (builderResult.hasMessage && builderResult.message != TestAllTypes()) {
      builderResult.message = TestAllTypes.builderWithPrototype(builderResult.message).mergeFrom(value).buildPartial()
    } else {
      builderResult.message = value
    }
    builderResult.hasMessage = true
    return self
  }
  func clearMessage() -> TestLiteImportsNonliteBuilder {
    builderResult.hasMessage = false
    builderResult.message = TestAllTypes()
    return self
  }
  override var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  override func clear() -> TestLiteImportsNonliteBuilder {
    builderResult = TestLiteImportsNonlite()
    return self
  }
  override func clone() -> TestLiteImportsNonliteBuilder {
    return TestLiteImportsNonlite.builderWithPrototype(builderResult)
  }
  override func build() -> TestLiteImportsNonlite {
       checkInitialized()
       return buildPartial()
  }
  func buildPartial() -> TestLiteImportsNonlite {
    var returnMe:TestLiteImportsNonlite = builderResult
    return returnMe
  }
  func mergeFrom(other:TestLiteImportsNonlite) -> TestLiteImportsNonliteBuilder {
    if (other == TestLiteImportsNonlite()) {
     return self
    }
    if (other.hasMessage) {
        mergeMessage(other.message)
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  override func mergeFromCodedInputStream(input:CodedInputStream) ->TestLiteImportsNonliteBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestLiteImportsNonliteBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 10 :
        var subBuilder:TestAllTypesBuilder = TestAllTypes.builder()
        if hasMessage {
          subBuilder.mergeFrom(message)
        }
        input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
        message = subBuilder.buildPartial()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

//Class extensions: NSData


extension TestLiteImportsNonlite {
    class func parseFromNSData(data:NSData) -> TestLiteImportsNonlite {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return TestLiteImportsNonlite.builder().mergeFromData(bytes).build()
    }
    class func parseFromNSData(data:NSData, extensionRegistry:ExtensionRegistry) -> TestLiteImportsNonlite {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return TestLiteImportsNonlite.builder().mergeFromData(bytes, extensionRegistry:extensionRegistry).build()
    }
}

// @@protoc_insertion_point(global_scope)