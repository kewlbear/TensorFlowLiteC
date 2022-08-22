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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteC.xcframework.zip", checksum: "67a5cef398c72988842f8d58ae35cba94ffc4d36d4eb48a82072621faa927040"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0d36d41bfbd978c2a1d8376c0afd21c15d03ac826737361bb09bee837926a4af"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCMetal.xcframework.zip", checksum: "37c9f301a62ebcf0cb1213615eb1bc254157ae41dfb8a39f59cbbed5f0e142b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
