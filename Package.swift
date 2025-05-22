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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteC.xcframework.zip", checksum: "7ace8c057cfad347bc9a719e6becee6bf19ecb0b0ca6fcbd0c1ea45ce1455bfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c918df28aa004c9240dca204b06c7db6ade7e3b5e086ba2a046d5c179b629a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteCMetal.xcframework.zip", checksum: "1f82369b97bd98935950fcd16ef285f5368f4b79d153161b6f381198ccf5365b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
