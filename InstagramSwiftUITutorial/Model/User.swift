import Foundation
import FirebaseFirestoreSwift

struct User: Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
}
