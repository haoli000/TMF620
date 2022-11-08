//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The event data structure */
public class ProductOfferingPriceDeleteEventPayload: APIModel {

    public var productOfferingPrice: ProductOfferingPrice?

    public init(productOfferingPrice: ProductOfferingPrice? = nil) {
        self.productOfferingPrice = productOfferingPrice
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        productOfferingPrice = try container.decodeIfPresent("productOfferingPrice")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(productOfferingPrice, forKey: "productOfferingPrice")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProductOfferingPriceDeleteEventPayload else { return false }
      guard self.productOfferingPrice == object.productOfferingPrice else { return false }
      return true
    }

    public static func == (lhs: ProductOfferingPriceDeleteEventPayload, rhs: ProductOfferingPriceDeleteEventPayload) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}