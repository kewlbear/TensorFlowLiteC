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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteC.xcframework.zip", checksum: "1b0347412fb82a4cd068c75135974fd2d9783e56331a5083cd879b2cbf6ac7cc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8bb93b3199cab78d0beebc4d5293beb25054905bcf686f444f305f2b1fc63990"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteCMetal.xcframework.zip", checksum: "d73cb5f4d56b03e7fc0a4b42882f6f9ae47861250e7cef9337d1336e19f96806"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
