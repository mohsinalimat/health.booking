//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateAppointmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
    graphQLMap = ["date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status]
  }

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var doctorId: GraphQLID {
    get {
      return graphQLMap["doctorId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorId")
    }
  }

  public var doctorName: String {
    get {
      return graphQLMap["doctorName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorName")
    }
  }

  public var doctorSpecialty: String {
    get {
      return graphQLMap["doctorSpecialty"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorSpecialty")
    }
  }

  public var hospitalLocation: String {
    get {
      return graphQLMap["hospitalLocation"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hospitalLocation")
    }
  }

  public var hospitalName: String {
    get {
      return graphQLMap["hospitalName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hospitalName")
    }
  }

  public var note: String {
    get {
      return graphQLMap["note"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var ownerId: GraphQLID {
    get {
      return graphQLMap["ownerId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var ownerName: String {
    get {
      return graphQLMap["ownerName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerName")
    }
  }

  public var status: String {
    get {
      return graphQLMap["status"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }
}

public struct CreateDoctorInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
    graphQLMap = ["hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty]
  }

  public var hospitalId: String {
    get {
      return graphQLMap["hospitalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hospitalId")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var specialty: String {
    get {
      return graphQLMap["specialty"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "specialty")
    }
  }
}

public struct CreateHealthInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(age: Int, bloodType: String, height: Double, sex: String, system: String, weight: Double) {
    graphQLMap = ["age": age, "bloodType": bloodType, "height": height, "sex": sex, "system": system, "weight": weight]
  }

  public var age: Int {
    get {
      return graphQLMap["age"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var bloodType: String {
    get {
      return graphQLMap["bloodType"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodType")
    }
  }

  public var height: Double {
    get {
      return graphQLMap["height"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var sex: String {
    get {
      return graphQLMap["sex"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sex")
    }
  }

  public var system: String {
    get {
      return graphQLMap["system"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "system")
    }
  }

  public var weight: Double {
    get {
      return graphQLMap["weight"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct CreateHospitalInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(coordinates: String, location: String, name: String) {
    graphQLMap = ["coordinates": coordinates, "location": location, "name": name]
  }

  public var coordinates: String {
    get {
      return graphQLMap["coordinates"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "coordinates")
    }
  }

  public var location: String {
    get {
      return graphQLMap["location"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct CreatePatientUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
    graphQLMap = ["email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["firstName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var healthId: GraphQLID {
    get {
      return graphQLMap["healthId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "healthId")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var lastName: String {
    get {
      return graphQLMap["lastName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(key: String, type: String) {
    graphQLMap = ["key": key, "type": type]
  }

  public var key: String {
    get {
      return graphQLMap["key"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  public var type: String {
    get {
      return graphQLMap["type"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }
}

public struct DeleteAppointmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct DeleteDoctorInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct DeleteHealthInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct DeleteHospitalInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct DeletePatientUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(key: String) {
    graphQLMap = ["key": key]
  }

  public var key: String {
    get {
      return graphQLMap["key"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }
}

public struct UpdateAppointmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(doctorId: GraphQLID? = nil, doctorName: String? = nil, id: GraphQLID, note: String? = nil, ownerId: GraphQLID? = nil, ownerName: String? = nil, status: String? = nil) {
    graphQLMap = ["doctorId": doctorId, "doctorName": doctorName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status]
  }

  public var doctorId: GraphQLID? {
    get {
      return graphQLMap["doctorId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorId")
    }
  }

  public var doctorName: String? {
    get {
      return graphQLMap["doctorName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorName")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var note: String? {
    get {
      return graphQLMap["note"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var ownerId: GraphQLID? {
    get {
      return graphQLMap["ownerId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var ownerName: String? {
    get {
      return graphQLMap["ownerName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerName")
    }
  }

  public var status: String? {
    get {
      return graphQLMap["status"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }
}

public struct UpdateDoctorInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(hospitalId: String? = nil, id: GraphQLID, name: String? = nil, specialty: String? = nil) {
    graphQLMap = ["hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty]
  }

  public var hospitalId: String? {
    get {
      return graphQLMap["hospitalId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hospitalId")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var specialty: String? {
    get {
      return graphQLMap["specialty"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "specialty")
    }
  }
}

public struct UpdateHealthInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(age: Int? = nil, bloodType: String? = nil, height: Double? = nil, id: GraphQLID, sex: String? = nil, system: String? = nil, weight: Double? = nil) {
    graphQLMap = ["age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight]
  }

  public var age: Int? {
    get {
      return graphQLMap["age"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var bloodType: String? {
    get {
      return graphQLMap["bloodType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodType")
    }
  }

  public var height: Double? {
    get {
      return graphQLMap["height"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var sex: String? {
    get {
      return graphQLMap["sex"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sex")
    }
  }

  public var system: String? {
    get {
      return graphQLMap["system"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "system")
    }
  }

  public var weight: Double? {
    get {
      return graphQLMap["weight"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct UpdateHospitalInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(coordinates: String? = nil, id: GraphQLID, location: String? = nil, name: String? = nil) {
    graphQLMap = ["coordinates": coordinates, "id": id, "location": location, "name": name]
  }

  public var coordinates: String? {
    get {
      return graphQLMap["coordinates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "coordinates")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var location: String? {
    get {
      return graphQLMap["location"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct UpdatePatientUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: String? = nil, firstName: String? = nil, id: GraphQLID, lastName: String? = nil) {
    graphQLMap = ["email": email, "firstName": firstName, "id": id, "lastName": lastName]
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["lastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }
}

public struct TableAppointmentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(date: String, doctorId: TableIDFilterInput? = nil, doctorName: TableStringFilterInput? = nil, id: TableIDFilterInput? = nil, note: TableStringFilterInput? = nil, ownerId: TableIDFilterInput? = nil, ownerName: TableStringFilterInput? = nil, status: TableStringFilterInput? = nil) {
    graphQLMap = ["date": date, "doctorId": doctorId, "doctorName": doctorName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status]
  }

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var doctorId: TableIDFilterInput? {
    get {
      return graphQLMap["doctorId"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorId")
    }
  }

  public var doctorName: TableStringFilterInput? {
    get {
      return graphQLMap["doctorName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctorName")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var note: TableStringFilterInput? {
    get {
      return graphQLMap["note"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var ownerId: TableIDFilterInput? {
    get {
      return graphQLMap["ownerId"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var ownerName: TableStringFilterInput? {
    get {
      return graphQLMap["ownerName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerName")
    }
  }

  public var status: TableStringFilterInput? {
    get {
      return graphQLMap["status"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beginsWith: GraphQLID? = nil, between: [GraphQLID?]? = nil, contains: GraphQLID? = nil, eq: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ne: GraphQLID? = nil, notContains: GraphQLID? = nil) {
    graphQLMap = ["beginsWith": beginsWith, "between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beginsWith: String? = nil, between: [String?]? = nil, contains: String? = nil, eq: String? = nil, ge: String? = nil, gt: String? = nil, le: String? = nil, lt: String? = nil, ne: String? = nil, notContains: String? = nil) {
    graphQLMap = ["beginsWith": beginsWith, "between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableDoctorFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(hospitalId: TableStringFilterInput? = nil, id: TableIDFilterInput? = nil, name: TableStringFilterInput? = nil, specialty: TableStringFilterInput? = nil) {
    graphQLMap = ["hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty]
  }

  public var hospitalId: TableStringFilterInput? {
    get {
      return graphQLMap["hospitalId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hospitalId")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: TableStringFilterInput? {
    get {
      return graphQLMap["name"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var specialty: TableStringFilterInput? {
    get {
      return graphQLMap["specialty"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "specialty")
    }
  }
}

public struct TableHealthInfoFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(age: TableIntFilterInput? = nil, bloodType: TableStringFilterInput? = nil, height: TableFloatFilterInput? = nil, id: TableIDFilterInput? = nil, sex: TableStringFilterInput? = nil, system: TableStringFilterInput? = nil, weight: TableFloatFilterInput? = nil) {
    graphQLMap = ["age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight]
  }

  public var age: TableIntFilterInput? {
    get {
      return graphQLMap["age"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var bloodType: TableStringFilterInput? {
    get {
      return graphQLMap["bloodType"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodType")
    }
  }

  public var height: TableFloatFilterInput? {
    get {
      return graphQLMap["height"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "height")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var sex: TableStringFilterInput? {
    get {
      return graphQLMap["sex"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sex")
    }
  }

  public var system: TableStringFilterInput? {
    get {
      return graphQLMap["system"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "system")
    }
  }

  public var weight: TableFloatFilterInput? {
    get {
      return graphQLMap["weight"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(between: [Int?]? = nil, contains: Int? = nil, eq: Int? = nil, ge: Int? = nil, gt: Int? = nil, le: Int? = nil, lt: Int? = nil, ne: Int? = nil, notContains: Int? = nil) {
    graphQLMap = ["between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableFloatFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(between: [Double?]? = nil, contains: Double? = nil, eq: Double? = nil, ge: Double? = nil, gt: Double? = nil, le: Double? = nil, lt: Double? = nil, ne: Double? = nil, notContains: Double? = nil) {
    graphQLMap = ["between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: Double? {
    get {
      return graphQLMap["contains"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: Double? {
    get {
      return graphQLMap["notContains"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableHospitalFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(coordinates: TableStringFilterInput? = nil, id: TableIDFilterInput? = nil, location: TableStringFilterInput? = nil, name: TableStringFilterInput? = nil) {
    graphQLMap = ["coordinates": coordinates, "id": id, "location": location, "name": name]
  }

  public var coordinates: TableStringFilterInput? {
    get {
      return graphQLMap["coordinates"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "coordinates")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var location: TableStringFilterInput? {
    get {
      return graphQLMap["location"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var name: TableStringFilterInput? {
    get {
      return graphQLMap["name"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct TablePatientUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: TableStringFilterInput? = nil, firstName: TableStringFilterInput? = nil, id: TableIDFilterInput? = nil, lastName: TableStringFilterInput? = nil) {
    graphQLMap = ["email": email, "firstName": firstName, "id": id, "lastName": lastName]
  }

  public var email: TableStringFilterInput? {
    get {
      return graphQLMap["email"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var firstName: TableStringFilterInput? {
    get {
      return graphQLMap["firstName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var lastName: TableStringFilterInput? {
    get {
      return graphQLMap["lastName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }
}

public struct TableUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableIDFilterInput? = nil, key: TableStringFilterInput? = nil, type: TableStringFilterInput? = nil) {
    graphQLMap = ["id": id, "key": key, "type": type]
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var key: TableStringFilterInput? {
    get {
      return graphQLMap["key"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  public var type: TableStringFilterInput? {
    get {
      return graphQLMap["type"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }
}

public final class CreateAppointmentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAppointment($input: CreateAppointmentInput!) {\n  createAppointment(input: $input) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var input: CreateAppointmentInput

  public init(input: CreateAppointmentInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAppointment", arguments: ["input": GraphQLVariable("input")], type: .object(CreateAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAppointment: CreateAppointment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAppointment": createAppointment.flatMap { $0.snapshot }])
    }

    public var createAppointment: CreateAppointment? {
      get {
        return (snapshot["createAppointment"] as? Snapshot).flatMap { CreateAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAppointment")
      }
    }

    public struct CreateAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class CreateDoctorMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateDoctor($input: CreateDoctorInput!) {\n  createDoctor(input: $input) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var input: CreateDoctorInput

  public init(input: CreateDoctorInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createDoctor", arguments: ["input": GraphQLVariable("input")], type: .object(CreateDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createDoctor: CreateDoctor? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createDoctor": createDoctor.flatMap { $0.snapshot }])
    }

    public var createDoctor: CreateDoctor? {
      get {
        return (snapshot["createDoctor"] as? Snapshot).flatMap { CreateDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createDoctor")
      }
    }

    public struct CreateDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class CreateHealthInfoMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateHealthInfo($input: CreateHealthInfoInput!) {\n  createHealthInfo(input: $input) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var input: CreateHealthInfoInput

  public init(input: CreateHealthInfoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createHealthInfo", arguments: ["input": GraphQLVariable("input")], type: .object(CreateHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createHealthInfo: CreateHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createHealthInfo": createHealthInfo.flatMap { $0.snapshot }])
    }

    public var createHealthInfo: CreateHealthInfo? {
      get {
        return (snapshot["createHealthInfo"] as? Snapshot).flatMap { CreateHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createHealthInfo")
      }
    }

    public struct CreateHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class CreateHospitalMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateHospital($input: CreateHospitalInput!) {\n  createHospital(input: $input) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var input: CreateHospitalInput

  public init(input: CreateHospitalInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createHospital", arguments: ["input": GraphQLVariable("input")], type: .object(CreateHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createHospital: CreateHospital? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createHospital": createHospital.flatMap { $0.snapshot }])
    }

    public var createHospital: CreateHospital? {
      get {
        return (snapshot["createHospital"] as? Snapshot).flatMap { CreateHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createHospital")
      }
    }

    public struct CreateHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class CreatePatientUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePatientUser($input: CreatePatientUserInput!) {\n  createPatientUser(input: $input) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var input: CreatePatientUserInput

  public init(input: CreatePatientUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPatientUser", arguments: ["input": GraphQLVariable("input")], type: .object(CreatePatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPatientUser: CreatePatientUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPatientUser": createPatientUser.flatMap { $0.snapshot }])
    }

    public var createPatientUser: CreatePatientUser? {
      get {
        return (snapshot["createPatientUser"] as? Snapshot).flatMap { CreatePatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPatientUser")
      }
    }

    public struct CreatePatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!) {\n  createUser(input: $input) {\n    __typename\n    id\n    key\n    type\n  }\n}"

  public var input: CreateUserInput

  public init(input: CreateUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("key", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, key: String, type: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "key": key, "type": type])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var key: String {
        get {
          return snapshot["key"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "key")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }
    }
  }
}

public final class DeleteAppointmentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteAppointment($input: DeleteAppointmentInput!) {\n  deleteAppointment(input: $input) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var input: DeleteAppointmentInput

  public init(input: DeleteAppointmentInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteAppointment", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteAppointment: DeleteAppointment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteAppointment": deleteAppointment.flatMap { $0.snapshot }])
    }

    public var deleteAppointment: DeleteAppointment? {
      get {
        return (snapshot["deleteAppointment"] as? Snapshot).flatMap { DeleteAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteAppointment")
      }
    }

    public struct DeleteAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class DeleteDoctorMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteDoctor($input: DeleteDoctorInput!) {\n  deleteDoctor(input: $input) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var input: DeleteDoctorInput

  public init(input: DeleteDoctorInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteDoctor", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteDoctor: DeleteDoctor? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteDoctor": deleteDoctor.flatMap { $0.snapshot }])
    }

    public var deleteDoctor: DeleteDoctor? {
      get {
        return (snapshot["deleteDoctor"] as? Snapshot).flatMap { DeleteDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteDoctor")
      }
    }

    public struct DeleteDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class DeleteHealthInfoMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteHealthInfo($input: DeleteHealthInfoInput!) {\n  deleteHealthInfo(input: $input) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var input: DeleteHealthInfoInput

  public init(input: DeleteHealthInfoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteHealthInfo", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteHealthInfo: DeleteHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteHealthInfo": deleteHealthInfo.flatMap { $0.snapshot }])
    }

    public var deleteHealthInfo: DeleteHealthInfo? {
      get {
        return (snapshot["deleteHealthInfo"] as? Snapshot).flatMap { DeleteHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteHealthInfo")
      }
    }

    public struct DeleteHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class DeleteHospitalMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteHospital($input: DeleteHospitalInput!) {\n  deleteHospital(input: $input) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var input: DeleteHospitalInput

  public init(input: DeleteHospitalInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteHospital", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteHospital: DeleteHospital? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteHospital": deleteHospital.flatMap { $0.snapshot }])
    }

    public var deleteHospital: DeleteHospital? {
      get {
        return (snapshot["deleteHospital"] as? Snapshot).flatMap { DeleteHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteHospital")
      }
    }

    public struct DeleteHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class DeletePatientUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePatientUser($input: DeletePatientUserInput!) {\n  deletePatientUser(input: $input) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var input: DeletePatientUserInput

  public init(input: DeletePatientUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePatientUser", arguments: ["input": GraphQLVariable("input")], type: .object(DeletePatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePatientUser: DeletePatientUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePatientUser": deletePatientUser.flatMap { $0.snapshot }])
    }

    public var deletePatientUser: DeletePatientUser? {
      get {
        return (snapshot["deletePatientUser"] as? Snapshot).flatMap { DeletePatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePatientUser")
      }
    }

    public struct DeletePatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!) {\n  deleteUser(input: $input) {\n    __typename\n    id\n    key\n    type\n  }\n}"

  public var input: DeleteUserInput

  public init(input: DeleteUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("key", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, key: String, type: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "key": key, "type": type])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var key: String {
        get {
          return snapshot["key"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "key")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }
    }
  }
}

public final class UpdateAppointmentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAppointment($input: UpdateAppointmentInput!) {\n  updateAppointment(input: $input) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var input: UpdateAppointmentInput

  public init(input: UpdateAppointmentInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAppointment", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAppointment: UpdateAppointment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAppointment": updateAppointment.flatMap { $0.snapshot }])
    }

    public var updateAppointment: UpdateAppointment? {
      get {
        return (snapshot["updateAppointment"] as? Snapshot).flatMap { UpdateAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAppointment")
      }
    }

    public struct UpdateAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class UpdateDoctorMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateDoctor($input: UpdateDoctorInput!) {\n  updateDoctor(input: $input) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var input: UpdateDoctorInput

  public init(input: UpdateDoctorInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateDoctor", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateDoctor: UpdateDoctor? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateDoctor": updateDoctor.flatMap { $0.snapshot }])
    }

    public var updateDoctor: UpdateDoctor? {
      get {
        return (snapshot["updateDoctor"] as? Snapshot).flatMap { UpdateDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateDoctor")
      }
    }

    public struct UpdateDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class UpdateHealthInfoMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateHealthInfo($input: UpdateHealthInfoInput!) {\n  updateHealthInfo(input: $input) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var input: UpdateHealthInfoInput

  public init(input: UpdateHealthInfoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateHealthInfo", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateHealthInfo: UpdateHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateHealthInfo": updateHealthInfo.flatMap { $0.snapshot }])
    }

    public var updateHealthInfo: UpdateHealthInfo? {
      get {
        return (snapshot["updateHealthInfo"] as? Snapshot).flatMap { UpdateHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateHealthInfo")
      }
    }

    public struct UpdateHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class UpdateHospitalMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateHospital($input: UpdateHospitalInput!) {\n  updateHospital(input: $input) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var input: UpdateHospitalInput

  public init(input: UpdateHospitalInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateHospital", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateHospital: UpdateHospital? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateHospital": updateHospital.flatMap { $0.snapshot }])
    }

    public var updateHospital: UpdateHospital? {
      get {
        return (snapshot["updateHospital"] as? Snapshot).flatMap { UpdateHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateHospital")
      }
    }

    public struct UpdateHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class UpdatePatientUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePatientUser($input: UpdatePatientUserInput!) {\n  updatePatientUser(input: $input) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var input: UpdatePatientUserInput

  public init(input: UpdatePatientUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePatientUser", arguments: ["input": GraphQLVariable("input")], type: .object(UpdatePatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePatientUser: UpdatePatientUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePatientUser": updatePatientUser.flatMap { $0.snapshot }])
    }

    public var updatePatientUser: UpdatePatientUser? {
      get {
        return (snapshot["updatePatientUser"] as? Snapshot).flatMap { UpdatePatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePatientUser")
      }
    }

    public struct UpdatePatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}

public final class GetAppointmentQuery: GraphQLQuery {
  public static let operationString =
    "query GetAppointment($id: ID!) {\n  getAppointment(id: $id) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAppointment", arguments: ["id": GraphQLVariable("id")], type: .object(GetAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAppointment: GetAppointment? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAppointment": getAppointment.flatMap { $0.snapshot }])
    }

    public var getAppointment: GetAppointment? {
      get {
        return (snapshot["getAppointment"] as? Snapshot).flatMap { GetAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAppointment")
      }
    }

    public struct GetAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class GetDoctorQuery: GraphQLQuery {
  public static let operationString =
    "query GetDoctor($id: ID!) {\n  getDoctor(id: $id) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getDoctor", arguments: ["id": GraphQLVariable("id")], type: .object(GetDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getDoctor: GetDoctor? = nil) {
      self.init(snapshot: ["__typename": "Query", "getDoctor": getDoctor.flatMap { $0.snapshot }])
    }

    public var getDoctor: GetDoctor? {
      get {
        return (snapshot["getDoctor"] as? Snapshot).flatMap { GetDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getDoctor")
      }
    }

    public struct GetDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class GetHealthInfoQuery: GraphQLQuery {
  public static let operationString =
    "query GetHealthInfo($id: ID!) {\n  getHealthInfo(id: $id) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getHealthInfo", arguments: ["id": GraphQLVariable("id")], type: .object(GetHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getHealthInfo: GetHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Query", "getHealthInfo": getHealthInfo.flatMap { $0.snapshot }])
    }

    public var getHealthInfo: GetHealthInfo? {
      get {
        return (snapshot["getHealthInfo"] as? Snapshot).flatMap { GetHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getHealthInfo")
      }
    }

    public struct GetHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class GetHospitalQuery: GraphQLQuery {
  public static let operationString =
    "query GetHospital($id: ID!) {\n  getHospital(id: $id) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getHospital", arguments: ["id": GraphQLVariable("id")], type: .object(GetHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getHospital: GetHospital? = nil) {
      self.init(snapshot: ["__typename": "Query", "getHospital": getHospital.flatMap { $0.snapshot }])
    }

    public var getHospital: GetHospital? {
      get {
        return (snapshot["getHospital"] as? Snapshot).flatMap { GetHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getHospital")
      }
    }

    public struct GetHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class GetPatientUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetPatientUser($id: ID!) {\n  getPatientUser(id: $id) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPatientUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetPatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPatientUser: GetPatientUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPatientUser": getPatientUser.flatMap { $0.snapshot }])
    }

    public var getPatientUser: GetPatientUser? {
      get {
        return (snapshot["getPatientUser"] as? Snapshot).flatMap { GetPatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPatientUser")
      }
    }

    public struct GetPatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($key: String!) {\n  getUser(key: $key) {\n    __typename\n    id\n    key\n    type\n  }\n}"

  public var key: String

  public init(key: String) {
    self.key = key
  }

  public var variables: GraphQLMap? {
    return ["key": key]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["key": GraphQLVariable("key")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("key", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, key: String, type: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "key": key, "type": type])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var key: String {
        get {
          return snapshot["key"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "key")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }
    }
  }
}

public final class ListAppointmentsQuery: GraphQLQuery {
  public static let operationString =
    "query ListAppointments($filter: TableAppointmentFilterInput, $limit: Int, $nextToken: String) {\n  listAppointments(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      date\n      doctorId\n      doctorName\n      doctorSpecialty\n      hospitalLocation\n      hospitalName\n      id\n      note\n      ownerId\n      ownerName\n      status\n    }\n    nextToken\n  }\n}"

  public var filter: TableAppointmentFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableAppointmentFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listAppointments", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listAppointments: ListAppointment? = nil) {
      self.init(snapshot: ["__typename": "Query", "listAppointments": listAppointments.flatMap { $0.snapshot }])
    }

    public var listAppointments: ListAppointment? {
      get {
        return (snapshot["listAppointments"] as? Snapshot).flatMap { ListAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listAppointments")
      }
    }

    public struct ListAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["AppointmentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "AppointmentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Appointment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
          GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
          GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
          GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("note", type: .nonNull(.scalar(String.self))),
          GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
          self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var date: String {
          get {
            return snapshot["date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var doctorId: GraphQLID {
          get {
            return snapshot["doctorId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "doctorId")
          }
        }

        public var doctorName: String {
          get {
            return snapshot["doctorName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "doctorName")
          }
        }

        public var doctorSpecialty: String {
          get {
            return snapshot["doctorSpecialty"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "doctorSpecialty")
          }
        }

        public var hospitalLocation: String {
          get {
            return snapshot["hospitalLocation"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "hospitalLocation")
          }
        }

        public var hospitalName: String {
          get {
            return snapshot["hospitalName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "hospitalName")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var note: String {
          get {
            return snapshot["note"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "note")
          }
        }

        public var ownerId: GraphQLID {
          get {
            return snapshot["ownerId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var ownerName: String {
          get {
            return snapshot["ownerName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ownerName")
          }
        }

        public var status: String {
          get {
            return snapshot["status"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }
      }
    }
  }
}

public final class ListDoctorsQuery: GraphQLQuery {
  public static let operationString =
    "query ListDoctors($filter: TableDoctorFilterInput, $limit: Int, $nextToken: String) {\n  listDoctors(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      hospitalId\n      id\n      name\n      specialty\n    }\n    nextToken\n  }\n}"

  public var filter: TableDoctorFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableDoctorFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listDoctors", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listDoctors: ListDoctor? = nil) {
      self.init(snapshot: ["__typename": "Query", "listDoctors": listDoctors.flatMap { $0.snapshot }])
    }

    public var listDoctors: ListDoctor? {
      get {
        return (snapshot["listDoctors"] as? Snapshot).flatMap { ListDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listDoctors")
      }
    }

    public struct ListDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["DoctorConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "DoctorConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Doctor"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
          self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var hospitalId: String {
          get {
            return snapshot["hospitalId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "hospitalId")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var specialty: String {
          get {
            return snapshot["specialty"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "specialty")
          }
        }
      }
    }
  }
}

public final class ListHealthInfosQuery: GraphQLQuery {
  public static let operationString =
    "query ListHealthInfos($filter: TableHealthInfoFilterInput, $limit: Int, $nextToken: String) {\n  listHealthInfos(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      age\n      bloodType\n      height\n      id\n      sex\n      system\n      weight\n    }\n    nextToken\n  }\n}"

  public var filter: TableHealthInfoFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableHealthInfoFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listHealthInfos", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listHealthInfos: ListHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Query", "listHealthInfos": listHealthInfos.flatMap { $0.snapshot }])
    }

    public var listHealthInfos: ListHealthInfo? {
      get {
        return (snapshot["listHealthInfos"] as? Snapshot).flatMap { ListHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listHealthInfos")
      }
    }

    public struct ListHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfoConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "HealthInfoConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["HealthInfo"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("age", type: .nonNull(.scalar(Int.self))),
          GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
          GraphQLField("height", type: .nonNull(.scalar(Double.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("sex", type: .nonNull(.scalar(String.self))),
          GraphQLField("system", type: .nonNull(.scalar(String.self))),
          GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
          self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var age: Int {
          get {
            return snapshot["age"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "age")
          }
        }

        public var bloodType: String {
          get {
            return snapshot["bloodType"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bloodType")
          }
        }

        public var height: Double {
          get {
            return snapshot["height"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "height")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var sex: String {
          get {
            return snapshot["sex"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sex")
          }
        }

        public var system: String {
          get {
            return snapshot["system"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "system")
          }
        }

        public var weight: Double {
          get {
            return snapshot["weight"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "weight")
          }
        }
      }
    }
  }
}

public final class ListHospitalsQuery: GraphQLQuery {
  public static let operationString =
    "query ListHospitals($filter: TableHospitalFilterInput, $limit: Int, $nextToken: String) {\n  listHospitals(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      coordinates\n      id\n      location\n      name\n    }\n    nextToken\n  }\n}"

  public var filter: TableHospitalFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableHospitalFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listHospitals", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listHospitals: ListHospital? = nil) {
      self.init(snapshot: ["__typename": "Query", "listHospitals": listHospitals.flatMap { $0.snapshot }])
    }

    public var listHospitals: ListHospital? {
      get {
        return (snapshot["listHospitals"] as? Snapshot).flatMap { ListHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listHospitals")
      }
    }

    public struct ListHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["HospitalConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "HospitalConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Hospital"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("location", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(coordinates: String, id: GraphQLID, location: String, name: String) {
          self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var coordinates: String {
          get {
            return snapshot["coordinates"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "coordinates")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var location: String {
          get {
            return snapshot["location"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class ListPatientUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListPatientUsers($filter: TablePatientUserFilterInput, $limit: Int, $nextToken: String) {\n  listPatientUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      email\n      firstName\n      healthId\n      id\n      lastName\n    }\n    nextToken\n  }\n}"

  public var filter: TablePatientUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TablePatientUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPatientUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPatientUsers: ListPatientUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPatientUsers": listPatientUsers.flatMap { $0.snapshot }])
    }

    public var listPatientUsers: ListPatientUser? {
      get {
        return (snapshot["listPatientUsers"] as? Snapshot).flatMap { ListPatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPatientUsers")
      }
    }

    public struct ListPatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PatientUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["PatientUser"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
          self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var healthId: GraphQLID {
          get {
            return snapshot["healthId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "healthId")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var lastName: String {
          get {
            return snapshot["lastName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: TableUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      key\n      type\n    }\n    nextToken\n  }\n}"

  public var filter: TableUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "UserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("type", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, key: String, type: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "key": key, "type": type])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var type: String {
          get {
            return snapshot["type"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }
      }
    }
  }
}

public final class OnCreateAppointmentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateAppointment($doctorId: ID, $doctorName: String, $id: ID, $ownerId: ID, $ownerName: String) {\n  onCreateAppointment(doctorId: $doctorId, doctorName: $doctorName, id: $id, ownerId: $ownerId, ownerName: $ownerName) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var doctorId: GraphQLID?
  public var doctorName: String?
  public var id: GraphQLID?
  public var ownerId: GraphQLID?
  public var ownerName: String?

  public init(doctorId: GraphQLID? = nil, doctorName: String? = nil, id: GraphQLID? = nil, ownerId: GraphQLID? = nil, ownerName: String? = nil) {
    self.doctorId = doctorId
    self.doctorName = doctorName
    self.id = id
    self.ownerId = ownerId
    self.ownerName = ownerName
  }

  public var variables: GraphQLMap? {
    return ["doctorId": doctorId, "doctorName": doctorName, "id": id, "ownerId": ownerId, "ownerName": ownerName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateAppointment", arguments: ["doctorId": GraphQLVariable("doctorId"), "doctorName": GraphQLVariable("doctorName"), "id": GraphQLVariable("id"), "ownerId": GraphQLVariable("ownerId"), "ownerName": GraphQLVariable("ownerName")], type: .object(OnCreateAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateAppointment: OnCreateAppointment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateAppointment": onCreateAppointment.flatMap { $0.snapshot }])
    }

    public var onCreateAppointment: OnCreateAppointment? {
      get {
        return (snapshot["onCreateAppointment"] as? Snapshot).flatMap { OnCreateAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateAppointment")
      }
    }

    public struct OnCreateAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class OnCreateDoctorSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateDoctor($hospitalId: String, $id: ID, $name: String, $specialty: String) {\n  onCreateDoctor(hospitalId: $hospitalId, id: $id, name: $name, specialty: $specialty) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var hospitalId: String?
  public var id: GraphQLID?
  public var name: String?
  public var specialty: String?

  public init(hospitalId: String? = nil, id: GraphQLID? = nil, name: String? = nil, specialty: String? = nil) {
    self.hospitalId = hospitalId
    self.id = id
    self.name = name
    self.specialty = specialty
  }

  public var variables: GraphQLMap? {
    return ["hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateDoctor", arguments: ["hospitalId": GraphQLVariable("hospitalId"), "id": GraphQLVariable("id"), "name": GraphQLVariable("name"), "specialty": GraphQLVariable("specialty")], type: .object(OnCreateDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateDoctor: OnCreateDoctor? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateDoctor": onCreateDoctor.flatMap { $0.snapshot }])
    }

    public var onCreateDoctor: OnCreateDoctor? {
      get {
        return (snapshot["onCreateDoctor"] as? Snapshot).flatMap { OnCreateDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateDoctor")
      }
    }

    public struct OnCreateDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class OnCreateHealthInfoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateHealthInfo($age: Int, $height: Float, $id: ID, $sex: String, $weight: Float) {\n  onCreateHealthInfo(age: $age, height: $height, id: $id, sex: $sex, weight: $weight) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var age: Int?
  public var height: Double?
  public var id: GraphQLID?
  public var sex: String?
  public var weight: Double?

  public init(age: Int? = nil, height: Double? = nil, id: GraphQLID? = nil, sex: String? = nil, weight: Double? = nil) {
    self.age = age
    self.height = height
    self.id = id
    self.sex = sex
    self.weight = weight
  }

  public var variables: GraphQLMap? {
    return ["age": age, "height": height, "id": id, "sex": sex, "weight": weight]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateHealthInfo", arguments: ["age": GraphQLVariable("age"), "height": GraphQLVariable("height"), "id": GraphQLVariable("id"), "sex": GraphQLVariable("sex"), "weight": GraphQLVariable("weight")], type: .object(OnCreateHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateHealthInfo: OnCreateHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateHealthInfo": onCreateHealthInfo.flatMap { $0.snapshot }])
    }

    public var onCreateHealthInfo: OnCreateHealthInfo? {
      get {
        return (snapshot["onCreateHealthInfo"] as? Snapshot).flatMap { OnCreateHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateHealthInfo")
      }
    }

    public struct OnCreateHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class OnCreateHospitalSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateHospital($coordinates: String, $id: ID, $location: String, $name: String) {\n  onCreateHospital(coordinates: $coordinates, id: $id, location: $location, name: $name) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var coordinates: String?
  public var id: GraphQLID?
  public var location: String?
  public var name: String?

  public init(coordinates: String? = nil, id: GraphQLID? = nil, location: String? = nil, name: String? = nil) {
    self.coordinates = coordinates
    self.id = id
    self.location = location
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["coordinates": coordinates, "id": id, "location": location, "name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateHospital", arguments: ["coordinates": GraphQLVariable("coordinates"), "id": GraphQLVariable("id"), "location": GraphQLVariable("location"), "name": GraphQLVariable("name")], type: .object(OnCreateHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateHospital: OnCreateHospital? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateHospital": onCreateHospital.flatMap { $0.snapshot }])
    }

    public var onCreateHospital: OnCreateHospital? {
      get {
        return (snapshot["onCreateHospital"] as? Snapshot).flatMap { OnCreateHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateHospital")
      }
    }

    public struct OnCreateHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class OnCreatePatientUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePatientUser($email: String, $firstName: String, $healthId: ID, $id: ID, $lastName: String) {\n  onCreatePatientUser(email: $email, firstName: $firstName, healthId: $healthId, id: $id, lastName: $lastName) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var email: String?
  public var firstName: String?
  public var healthId: GraphQLID?
  public var id: GraphQLID?
  public var lastName: String?

  public init(email: String? = nil, firstName: String? = nil, healthId: GraphQLID? = nil, id: GraphQLID? = nil, lastName: String? = nil) {
    self.email = email
    self.firstName = firstName
    self.healthId = healthId
    self.id = id
    self.lastName = lastName
  }

  public var variables: GraphQLMap? {
    return ["email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePatientUser", arguments: ["email": GraphQLVariable("email"), "firstName": GraphQLVariable("firstName"), "healthId": GraphQLVariable("healthId"), "id": GraphQLVariable("id"), "lastName": GraphQLVariable("lastName")], type: .object(OnCreatePatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePatientUser: OnCreatePatientUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePatientUser": onCreatePatientUser.flatMap { $0.snapshot }])
    }

    public var onCreatePatientUser: OnCreatePatientUser? {
      get {
        return (snapshot["onCreatePatientUser"] as? Snapshot).flatMap { OnCreatePatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePatientUser")
      }
    }

    public struct OnCreatePatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser($id: ID, $key: String, $type: String) {\n  onCreateUser(id: $id, key: $key, type: $type) {\n    __typename\n    id\n    key\n    type\n  }\n}"

  public var id: GraphQLID?
  public var key: String?
  public var type: String?

  public init(id: GraphQLID? = nil, key: String? = nil, type: String? = nil) {
    self.id = id
    self.key = key
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["id": id, "key": key, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", arguments: ["id": GraphQLVariable("id"), "key": GraphQLVariable("key"), "type": GraphQLVariable("type")], type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("key", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, key: String, type: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "key": key, "type": type])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var key: String {
        get {
          return snapshot["key"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "key")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }
    }
  }
}

public final class OnDeleteAppointmentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteAppointment($doctorId: ID, $doctorName: String, $id: ID, $ownerId: ID, $ownerName: String) {\n  onDeleteAppointment(doctorId: $doctorId, doctorName: $doctorName, id: $id, ownerId: $ownerId, ownerName: $ownerName) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var doctorId: GraphQLID?
  public var doctorName: String?
  public var id: GraphQLID?
  public var ownerId: GraphQLID?
  public var ownerName: String?

  public init(doctorId: GraphQLID? = nil, doctorName: String? = nil, id: GraphQLID? = nil, ownerId: GraphQLID? = nil, ownerName: String? = nil) {
    self.doctorId = doctorId
    self.doctorName = doctorName
    self.id = id
    self.ownerId = ownerId
    self.ownerName = ownerName
  }

  public var variables: GraphQLMap? {
    return ["doctorId": doctorId, "doctorName": doctorName, "id": id, "ownerId": ownerId, "ownerName": ownerName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteAppointment", arguments: ["doctorId": GraphQLVariable("doctorId"), "doctorName": GraphQLVariable("doctorName"), "id": GraphQLVariable("id"), "ownerId": GraphQLVariable("ownerId"), "ownerName": GraphQLVariable("ownerName")], type: .object(OnDeleteAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteAppointment: OnDeleteAppointment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteAppointment": onDeleteAppointment.flatMap { $0.snapshot }])
    }

    public var onDeleteAppointment: OnDeleteAppointment? {
      get {
        return (snapshot["onDeleteAppointment"] as? Snapshot).flatMap { OnDeleteAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteAppointment")
      }
    }

    public struct OnDeleteAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class OnDeleteDoctorSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteDoctor($hospitalId: String, $id: ID, $name: String, $specialty: String) {\n  onDeleteDoctor(hospitalId: $hospitalId, id: $id, name: $name, specialty: $specialty) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var hospitalId: String?
  public var id: GraphQLID?
  public var name: String?
  public var specialty: String?

  public init(hospitalId: String? = nil, id: GraphQLID? = nil, name: String? = nil, specialty: String? = nil) {
    self.hospitalId = hospitalId
    self.id = id
    self.name = name
    self.specialty = specialty
  }

  public var variables: GraphQLMap? {
    return ["hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteDoctor", arguments: ["hospitalId": GraphQLVariable("hospitalId"), "id": GraphQLVariable("id"), "name": GraphQLVariable("name"), "specialty": GraphQLVariable("specialty")], type: .object(OnDeleteDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteDoctor: OnDeleteDoctor? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteDoctor": onDeleteDoctor.flatMap { $0.snapshot }])
    }

    public var onDeleteDoctor: OnDeleteDoctor? {
      get {
        return (snapshot["onDeleteDoctor"] as? Snapshot).flatMap { OnDeleteDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteDoctor")
      }
    }

    public struct OnDeleteDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class OnDeleteHealthInfoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteHealthInfo($age: Int, $height: Float, $id: ID, $sex: String, $weight: Float) {\n  onDeleteHealthInfo(age: $age, height: $height, id: $id, sex: $sex, weight: $weight) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var age: Int?
  public var height: Double?
  public var id: GraphQLID?
  public var sex: String?
  public var weight: Double?

  public init(age: Int? = nil, height: Double? = nil, id: GraphQLID? = nil, sex: String? = nil, weight: Double? = nil) {
    self.age = age
    self.height = height
    self.id = id
    self.sex = sex
    self.weight = weight
  }

  public var variables: GraphQLMap? {
    return ["age": age, "height": height, "id": id, "sex": sex, "weight": weight]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteHealthInfo", arguments: ["age": GraphQLVariable("age"), "height": GraphQLVariable("height"), "id": GraphQLVariable("id"), "sex": GraphQLVariable("sex"), "weight": GraphQLVariable("weight")], type: .object(OnDeleteHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteHealthInfo: OnDeleteHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteHealthInfo": onDeleteHealthInfo.flatMap { $0.snapshot }])
    }

    public var onDeleteHealthInfo: OnDeleteHealthInfo? {
      get {
        return (snapshot["onDeleteHealthInfo"] as? Snapshot).flatMap { OnDeleteHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteHealthInfo")
      }
    }

    public struct OnDeleteHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class OnDeleteHospitalSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteHospital($coordinates: String, $id: ID, $location: String, $name: String) {\n  onDeleteHospital(coordinates: $coordinates, id: $id, location: $location, name: $name) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var coordinates: String?
  public var id: GraphQLID?
  public var location: String?
  public var name: String?

  public init(coordinates: String? = nil, id: GraphQLID? = nil, location: String? = nil, name: String? = nil) {
    self.coordinates = coordinates
    self.id = id
    self.location = location
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["coordinates": coordinates, "id": id, "location": location, "name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteHospital", arguments: ["coordinates": GraphQLVariable("coordinates"), "id": GraphQLVariable("id"), "location": GraphQLVariable("location"), "name": GraphQLVariable("name")], type: .object(OnDeleteHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteHospital: OnDeleteHospital? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteHospital": onDeleteHospital.flatMap { $0.snapshot }])
    }

    public var onDeleteHospital: OnDeleteHospital? {
      get {
        return (snapshot["onDeleteHospital"] as? Snapshot).flatMap { OnDeleteHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteHospital")
      }
    }

    public struct OnDeleteHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class OnDeletePatientUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePatientUser($email: String, $firstName: String, $healthId: ID, $id: ID, $lastName: String) {\n  onDeletePatientUser(email: $email, firstName: $firstName, healthId: $healthId, id: $id, lastName: $lastName) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var email: String?
  public var firstName: String?
  public var healthId: GraphQLID?
  public var id: GraphQLID?
  public var lastName: String?

  public init(email: String? = nil, firstName: String? = nil, healthId: GraphQLID? = nil, id: GraphQLID? = nil, lastName: String? = nil) {
    self.email = email
    self.firstName = firstName
    self.healthId = healthId
    self.id = id
    self.lastName = lastName
  }

  public var variables: GraphQLMap? {
    return ["email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePatientUser", arguments: ["email": GraphQLVariable("email"), "firstName": GraphQLVariable("firstName"), "healthId": GraphQLVariable("healthId"), "id": GraphQLVariable("id"), "lastName": GraphQLVariable("lastName")], type: .object(OnDeletePatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePatientUser: OnDeletePatientUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePatientUser": onDeletePatientUser.flatMap { $0.snapshot }])
    }

    public var onDeletePatientUser: OnDeletePatientUser? {
      get {
        return (snapshot["onDeletePatientUser"] as? Snapshot).flatMap { OnDeletePatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePatientUser")
      }
    }

    public struct OnDeletePatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser($id: ID, $key: String, $type: String) {\n  onDeleteUser(id: $id, key: $key, type: $type) {\n    __typename\n    id\n    key\n    type\n  }\n}"

  public var id: GraphQLID?
  public var key: String?
  public var type: String?

  public init(id: GraphQLID? = nil, key: String? = nil, type: String? = nil) {
    self.id = id
    self.key = key
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["id": id, "key": key, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", arguments: ["id": GraphQLVariable("id"), "key": GraphQLVariable("key"), "type": GraphQLVariable("type")], type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("key", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, key: String, type: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "key": key, "type": type])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var key: String {
        get {
          return snapshot["key"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "key")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }
    }
  }
}

public final class OnUpdateAppointmentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateAppointment($doctorId: ID, $doctorName: String, $id: ID, $ownerId: ID, $ownerName: String) {\n  onUpdateAppointment(doctorId: $doctorId, doctorName: $doctorName, id: $id, ownerId: $ownerId, ownerName: $ownerName) {\n    __typename\n    date\n    doctorId\n    doctorName\n    doctorSpecialty\n    hospitalLocation\n    hospitalName\n    id\n    note\n    ownerId\n    ownerName\n    status\n  }\n}"

  public var doctorId: GraphQLID?
  public var doctorName: String?
  public var id: GraphQLID?
  public var ownerId: GraphQLID?
  public var ownerName: String?

  public init(doctorId: GraphQLID? = nil, doctorName: String? = nil, id: GraphQLID? = nil, ownerId: GraphQLID? = nil, ownerName: String? = nil) {
    self.doctorId = doctorId
    self.doctorName = doctorName
    self.id = id
    self.ownerId = ownerId
    self.ownerName = ownerName
  }

  public var variables: GraphQLMap? {
    return ["doctorId": doctorId, "doctorName": doctorName, "id": id, "ownerId": ownerId, "ownerName": ownerName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateAppointment", arguments: ["doctorId": GraphQLVariable("doctorId"), "doctorName": GraphQLVariable("doctorName"), "id": GraphQLVariable("id"), "ownerId": GraphQLVariable("ownerId"), "ownerName": GraphQLVariable("ownerName")], type: .object(OnUpdateAppointment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateAppointment: OnUpdateAppointment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateAppointment": onUpdateAppointment.flatMap { $0.snapshot }])
    }

    public var onUpdateAppointment: OnUpdateAppointment? {
      get {
        return (snapshot["onUpdateAppointment"] as? Snapshot).flatMap { OnUpdateAppointment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateAppointment")
      }
    }

    public struct OnUpdateAppointment: GraphQLSelectionSet {
      public static let possibleTypes = ["Appointment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("doctorName", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctorSpecialty", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalName", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("note", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: String, doctorId: GraphQLID, doctorName: String, doctorSpecialty: String, hospitalLocation: String, hospitalName: String, id: GraphQLID, note: String, ownerId: GraphQLID, ownerName: String, status: String) {
        self.init(snapshot: ["__typename": "Appointment", "date": date, "doctorId": doctorId, "doctorName": doctorName, "doctorSpecialty": doctorSpecialty, "hospitalLocation": hospitalLocation, "hospitalName": hospitalName, "id": id, "note": note, "ownerId": ownerId, "ownerName": ownerName, "status": status])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var doctorId: GraphQLID {
        get {
          return snapshot["doctorId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorId")
        }
      }

      public var doctorName: String {
        get {
          return snapshot["doctorName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorName")
        }
      }

      public var doctorSpecialty: String {
        get {
          return snapshot["doctorSpecialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctorSpecialty")
        }
      }

      public var hospitalLocation: String {
        get {
          return snapshot["hospitalLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalLocation")
        }
      }

      public var hospitalName: String {
        get {
          return snapshot["hospitalName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalName")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var note: String {
        get {
          return snapshot["note"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }

      public var ownerId: GraphQLID {
        get {
          return snapshot["ownerId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var ownerName: String {
        get {
          return snapshot["ownerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerName")
        }
      }

      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class OnUpdateDoctorSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateDoctor($hospitalId: String, $id: ID, $name: String, $specialty: String) {\n  onUpdateDoctor(hospitalId: $hospitalId, id: $id, name: $name, specialty: $specialty) {\n    __typename\n    hospitalId\n    id\n    name\n    specialty\n  }\n}"

  public var hospitalId: String?
  public var id: GraphQLID?
  public var name: String?
  public var specialty: String?

  public init(hospitalId: String? = nil, id: GraphQLID? = nil, name: String? = nil, specialty: String? = nil) {
    self.hospitalId = hospitalId
    self.id = id
    self.name = name
    self.specialty = specialty
  }

  public var variables: GraphQLMap? {
    return ["hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateDoctor", arguments: ["hospitalId": GraphQLVariable("hospitalId"), "id": GraphQLVariable("id"), "name": GraphQLVariable("name"), "specialty": GraphQLVariable("specialty")], type: .object(OnUpdateDoctor.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateDoctor: OnUpdateDoctor? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateDoctor": onUpdateDoctor.flatMap { $0.snapshot }])
    }

    public var onUpdateDoctor: OnUpdateDoctor? {
      get {
        return (snapshot["onUpdateDoctor"] as? Snapshot).flatMap { OnUpdateDoctor(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateDoctor")
      }
    }

    public struct OnUpdateDoctor: GraphQLSelectionSet {
      public static let possibleTypes = ["Doctor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("hospitalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("specialty", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(hospitalId: String, id: GraphQLID, name: String, specialty: String) {
        self.init(snapshot: ["__typename": "Doctor", "hospitalId": hospitalId, "id": id, "name": name, "specialty": specialty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var hospitalId: String {
        get {
          return snapshot["hospitalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hospitalId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var specialty: String {
        get {
          return snapshot["specialty"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "specialty")
        }
      }
    }
  }
}

public final class OnUpdateHealthInfoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateHealthInfo($age: Int, $height: Float, $id: ID, $sex: String, $weight: Float) {\n  onUpdateHealthInfo(age: $age, height: $height, id: $id, sex: $sex, weight: $weight) {\n    __typename\n    age\n    bloodType\n    height\n    id\n    sex\n    system\n    weight\n  }\n}"

  public var age: Int?
  public var height: Double?
  public var id: GraphQLID?
  public var sex: String?
  public var weight: Double?

  public init(age: Int? = nil, height: Double? = nil, id: GraphQLID? = nil, sex: String? = nil, weight: Double? = nil) {
    self.age = age
    self.height = height
    self.id = id
    self.sex = sex
    self.weight = weight
  }

  public var variables: GraphQLMap? {
    return ["age": age, "height": height, "id": id, "sex": sex, "weight": weight]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateHealthInfo", arguments: ["age": GraphQLVariable("age"), "height": GraphQLVariable("height"), "id": GraphQLVariable("id"), "sex": GraphQLVariable("sex"), "weight": GraphQLVariable("weight")], type: .object(OnUpdateHealthInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateHealthInfo: OnUpdateHealthInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateHealthInfo": onUpdateHealthInfo.flatMap { $0.snapshot }])
    }

    public var onUpdateHealthInfo: OnUpdateHealthInfo? {
      get {
        return (snapshot["onUpdateHealthInfo"] as? Snapshot).flatMap { OnUpdateHealthInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateHealthInfo")
      }
    }

    public struct OnUpdateHealthInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["HealthInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .nonNull(.scalar(Int.self))),
        GraphQLField("bloodType", type: .nonNull(.scalar(String.self))),
        GraphQLField("height", type: .nonNull(.scalar(Double.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sex", type: .nonNull(.scalar(String.self))),
        GraphQLField("system", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(age: Int, bloodType: String, height: Double, id: GraphQLID, sex: String, system: String, weight: Double) {
        self.init(snapshot: ["__typename": "HealthInfo", "age": age, "bloodType": bloodType, "height": height, "id": id, "sex": sex, "system": system, "weight": weight])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var age: Int {
        get {
          return snapshot["age"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var bloodType: String {
        get {
          return snapshot["bloodType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodType")
        }
      }

      public var height: Double {
        get {
          return snapshot["height"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "height")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String {
        get {
          return snapshot["sex"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sex")
        }
      }

      public var system: String {
        get {
          return snapshot["system"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "system")
        }
      }

      public var weight: Double {
        get {
          return snapshot["weight"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }
    }
  }
}

public final class OnUpdateHospitalSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateHospital($coordinates: String, $id: ID, $location: String, $name: String) {\n  onUpdateHospital(coordinates: $coordinates, id: $id, location: $location, name: $name) {\n    __typename\n    coordinates\n    id\n    location\n    name\n  }\n}"

  public var coordinates: String?
  public var id: GraphQLID?
  public var location: String?
  public var name: String?

  public init(coordinates: String? = nil, id: GraphQLID? = nil, location: String? = nil, name: String? = nil) {
    self.coordinates = coordinates
    self.id = id
    self.location = location
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["coordinates": coordinates, "id": id, "location": location, "name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateHospital", arguments: ["coordinates": GraphQLVariable("coordinates"), "id": GraphQLVariable("id"), "location": GraphQLVariable("location"), "name": GraphQLVariable("name")], type: .object(OnUpdateHospital.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateHospital: OnUpdateHospital? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateHospital": onUpdateHospital.flatMap { $0.snapshot }])
    }

    public var onUpdateHospital: OnUpdateHospital? {
      get {
        return (snapshot["onUpdateHospital"] as? Snapshot).flatMap { OnUpdateHospital(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateHospital")
      }
    }

    public struct OnUpdateHospital: GraphQLSelectionSet {
      public static let possibleTypes = ["Hospital"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("coordinates", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(coordinates: String, id: GraphQLID, location: String, name: String) {
        self.init(snapshot: ["__typename": "Hospital", "coordinates": coordinates, "id": id, "location": location, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var coordinates: String {
        get {
          return snapshot["coordinates"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinates")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class OnUpdatePatientUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePatientUser($email: String, $firstName: String, $healthId: ID, $id: ID, $lastName: String) {\n  onUpdatePatientUser(email: $email, firstName: $firstName, healthId: $healthId, id: $id, lastName: $lastName) {\n    __typename\n    email\n    firstName\n    healthId\n    id\n    lastName\n  }\n}"

  public var email: String?
  public var firstName: String?
  public var healthId: GraphQLID?
  public var id: GraphQLID?
  public var lastName: String?

  public init(email: String? = nil, firstName: String? = nil, healthId: GraphQLID? = nil, id: GraphQLID? = nil, lastName: String? = nil) {
    self.email = email
    self.firstName = firstName
    self.healthId = healthId
    self.id = id
    self.lastName = lastName
  }

  public var variables: GraphQLMap? {
    return ["email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePatientUser", arguments: ["email": GraphQLVariable("email"), "firstName": GraphQLVariable("firstName"), "healthId": GraphQLVariable("healthId"), "id": GraphQLVariable("id"), "lastName": GraphQLVariable("lastName")], type: .object(OnUpdatePatientUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePatientUser: OnUpdatePatientUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePatientUser": onUpdatePatientUser.flatMap { $0.snapshot }])
    }

    public var onUpdatePatientUser: OnUpdatePatientUser? {
      get {
        return (snapshot["onUpdatePatientUser"] as? Snapshot).flatMap { OnUpdatePatientUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePatientUser")
      }
    }

    public struct OnUpdatePatientUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PatientUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("healthId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, firstName: String, healthId: GraphQLID, id: GraphQLID, lastName: String) {
        self.init(snapshot: ["__typename": "PatientUser", "email": email, "firstName": firstName, "healthId": healthId, "id": id, "lastName": lastName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var healthId: GraphQLID {
        get {
          return snapshot["healthId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "healthId")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }
    }
  }
}