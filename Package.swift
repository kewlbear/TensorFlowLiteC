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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteC.xcframework.zip", checksum: "d427ad5ca1d186bba192eb2db860bcbe960051d60d8e050c386c6f0dbcfd2bed"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e856abcc139a3712b79e339c4d737329b09dc246b69e3d324b508dac3e3f642"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteCMetal.xcframework.zip", checksum: "93fce67ba3b51e6b991e8d1238d3f4bbafef7ad126ef85720b06d0d435b30d3f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
