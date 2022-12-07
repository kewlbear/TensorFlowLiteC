// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221206/TensorFlowLiteC.xcframework.zip", checksum: "8e63869e1d94c645456b3b112c16e39a1fbfbf9576a51752bd5e91254f37ec85"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f60a6ef15cac428bdee7eb875b54a476c170aea18d23e762fda237278b0553d1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221206/TensorFlowLiteCMetal.xcframework.zip", checksum: "a9c65e7c892c581b0df40f4168c488f1396f354c350bdb8338f0b6a431a99e8a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
