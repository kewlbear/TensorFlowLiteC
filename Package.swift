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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240901/TensorFlowLiteC.xcframework.zip", checksum: "030b42ed2d5a43042bcc119865fbe127f5e7f41365049bafb78370130c56906f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240901/TensorFlowLiteCCoreML.xcframework.zip", checksum: "da1d96ff1c9b62fe03da0cadf1bb4585f277d91392a486fbd2d2ddca39e424a7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240901/TensorFlowLiteCMetal.xcframework.zip", checksum: "46c69ed1164dc9cd9790b103f31f9c77e1092a6202aa055858252cf23662d38b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
