// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "EnrollmentBio",
    platforms: [
        .iOS(.v13),  // Specify the minimum platform version
    ],
    products: [
        .library(
            name: "EnrollmentBio",
            targets: ["EnrollmentBio"]
        ),
    ],

    
    targets: [
        
        .binaryTarget(
            name: "EnrollmentBio",
            path: "EnrollmentBio/EnrollmentBio.xcframework"
        ),
        
        .binaryTarget(
            name: "aaPrintScannerLic",
            path: "EnrollmentBio/aaPrintScannerLic.xcframework"
        ),
        
        .binaryTarget(
            name: "aaPrintScannerFw",
            path: "EnrollmentBio/aaPrintScannerFw.xcframework"
        ),
        
        .target(
            name: "FrameworkCWrapper",  // Use a different name for the wrapper target
            dependencies: [
                "EnrollmentBio",  // Add FrameworkA as a dependency
                "aaPrintScannerLic",  // Add FrameworkB as a dependency
                "aaPrintScannerFw"   // Add FrameworkC as a dependency (if needed for compilation)
            ]
        )
    ]
)



   
