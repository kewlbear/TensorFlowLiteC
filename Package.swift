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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteC.xcframework.zip", checksum: "f241244ff6c3860e07e312d6871e336bf3408386de5a77da37d0779ddb33cb47"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46cd1fc34ebfb0d10c09a5886193ba57125f1665712576b3def04dbc35d84992"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteCMetal.xcframework.zip", checksum: "5a473d25c19ef61b7b8db5b4208cf67f652c3dbd1d86d76bb0ec5a3bf1a64a57"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
