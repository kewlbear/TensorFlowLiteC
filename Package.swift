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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230916/TensorFlowLiteC.xcframework.zip", checksum: "3c4b2b0d2935eb4e88938f70effa5d87acbffc78544ca09b606923536890ec03"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230916/TensorFlowLiteCCoreML.xcframework.zip", checksum: "56140505be3df25a4fb6267a319d5271dec1345d05354a9ca461fd447a4bb5ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230916/TensorFlowLiteCMetal.xcframework.zip", checksum: "59a6166a4ad393efe470a59bc81ae55cb9de1ded4b8695489930682561f22cd0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
