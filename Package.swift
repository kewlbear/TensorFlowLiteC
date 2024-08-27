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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240826/TensorFlowLiteC.xcframework.zip", checksum: "a3ccb627e26e054a7a7ab9e98fbe141f0209c0659ce2d17b0ea5e5cd27d45287"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240826/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a4ed3376af758dcdb98e6e46e2daf0b652cff96fd870f0455f95cc87eef7a44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240826/TensorFlowLiteCMetal.xcframework.zip", checksum: "d418ce01ccbbbebb9afd03be89f05625ec7ed48f58ed790fb4b426f03e6d4eb9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
