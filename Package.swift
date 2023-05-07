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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230506/TensorFlowLiteC.xcframework.zip", checksum: "ac3dc265cf3912e2b2d8ef4f54da508fa569f71eab8e2e5d76eb654c5b24cc06"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ee7a80d5c471d35dd434a0ced3bd34eda00cb1bdf26c43db5e70d808a76f083"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230506/TensorFlowLiteCMetal.xcframework.zip", checksum: "6b788d3d8797684d56d720c0f72abaeff1f11e34a258c14a8d9dea7489e6899b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
