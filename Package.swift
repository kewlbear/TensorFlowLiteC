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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220915/TensorFlowLiteC.xcframework.zip", checksum: "4ab785bb99de544b9bc7edbb71bcb50e16bef5cd4e621670b677207adf70b2a5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220915/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f1a1bdccc147b8d5581e15d0032ac03ab623db99f46f5bd68fa10b69d834fd0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220915/TensorFlowLiteCMetal.xcframework.zip", checksum: "d007864df01838465deaa9f9f1d770acd5b27b7dc3226dee549907de6c8c967b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
