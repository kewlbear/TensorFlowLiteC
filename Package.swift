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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230829/TensorFlowLiteC.xcframework.zip", checksum: "0216bda8cdb17c71d829324a0058b82a8c79265b8141bad65826ec129e208d3e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230829/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e700e0a0ec587cb0d3ec01fdd7b6c52399528dbf890a2735015667d75d2ac5e7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230829/TensorFlowLiteCMetal.xcframework.zip", checksum: "bfdde312a0057affb7bada398eb1b7226d3eb571dc1e14d4aeaa61a643e6e405"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
