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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteC.xcframework.zip", checksum: "252a9150f0965cf877c79a14a33f90fbc30ea50ee621f2fa7bd6023e6538f4a6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6460857f8a35a6e74d4e20bac71895ae97adef076b81a96e352ae41806ea7aad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "380d9cbb87ff68d275a9e7af40d07ee58000fe965dcbe36cc06ed44811df5f57"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
