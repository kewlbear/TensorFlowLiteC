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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221017/TensorFlowLiteC.xcframework.zip", checksum: "6b595541f84aed24bf0d3cd186b7086f1b33a627cf5b144d345e546ecaea5975"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221017/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3bfe450e54cfef4f78bf7aa1a6f859739bf05dc614550710314e45172172e9b5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221017/TensorFlowLiteCMetal.xcframework.zip", checksum: "704d300bd2274f020ba36978180a8e804fba82bea382912156413320aa854654"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
