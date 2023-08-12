import Foundation
import GDataXMLNode

public struct GDataXMLDocumentDepPackage {
    public private(set) var text = "Hello, World!"

    public init() {
    }

    public static func prettyPrint(data: Data) -> String? {
        guard let prettyXML = GDataXMLDocument.prettyPrintXMLData(data) else {
            return nil
        }

        return prettyXML
    }
}
