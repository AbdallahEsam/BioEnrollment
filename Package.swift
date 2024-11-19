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
    
    dependencies: [
        // Add the Swift package dependencies here
        .package(url: "https://github.com/AbdallahEsam/scanner.git", from: "1.0.0"),
        .package(url: "https://github.com/AbdallahEsam/scannerLic.git", from: "1.0.0"),
        // Add any other packages you depend on
    ],
    
    targets: [
        .binaryTarget(
            name: "EnrollmentBio",
            path: "EnrollmentBio/EnrollmentBio.xcframework"
        )
        
    ]
)



   
