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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221004/TensorFlowLiteC.xcframework.zip", checksum: "e17e889c66d749c464401e18e1bf786af9ab3e508a70955da3e3d5624648c918"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221004/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fe39a8bdb88ec862761f11f91cd4371286f39ebafbaddd87980302c870eab5f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221004/TensorFlowLiteCMetal.xcframework.zip", checksum: "53e84efc4d9ba43996e8618e32b69719aad4469ff92a4d98c38b54569b46b5d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
