//
//  CSVConversion.swift
//  CoreLocationSample
//
//  Created by 村中令 on 2022/05/05.
//

import Foundation

struct UseCaseFilterFacilityInformation {
    static func filterFacilityInformationFromDataBase(filterServiceType: FilterServiceType) -> [FacilityInformation] {
        var facilityInformations: [FacilityInformation] = []
        switch filterServiceType {
        case .all:
            let allServiceType = ServiceType.allCases
            allServiceType.forEach { serviceType in
                let array = CsvConversion.convertFacilityInformationFromCsv(serviceType: serviceType)
                facilityInformations += array
            }
            //        case .communityCareForDementiaSupportingResidents320:
            //            facilityInformations =
            //            CsvConversion.convertFacilityInformationFromCsv(
            //                serviceType: .communityCareForDementiaSupportingResidents320
            //            )
        case .DayCare:
            facilityInformations =
            CsvConversion.convertFacilityInformationFromCsv(
                serviceType: .DayCare
            )
        case .DayCareMedicalTreatmentDayCare:
            facilityInformations =
            CsvConversion.convertFacilityInformationFromCsv(
                serviceType: .DayCareMedicalTreatmentDayCare
            )
        case .DayCareRehabilitation:
            facilityInformations =
            CsvConversion.convertFacilityInformationFromCsv(
                serviceType: .DayCareRehabilitation
            )
        }
        print(facilityInformations[1])
        return facilityInformations
    }
}
