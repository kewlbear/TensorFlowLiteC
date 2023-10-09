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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231008/TensorFlowLiteC.xcframework.zip", checksum: "a1af3ddcbf577a1a8b9c67adbb9c1a88aede810aab779802185d701db6a5ae52"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231008/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b086cd599c38e20ef82c9ab3b5c4c12c2e0e6179336e87b12a7f1ea642a47d69"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231008/TensorFlowLiteCMetal.xcframework.zip", checksum: "81130046e25282b61febc1816630b85d98677f90e4db9b0b86fc08ea1b5e6056"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
