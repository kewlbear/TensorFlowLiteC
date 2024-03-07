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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240306/TensorFlowLiteC.xcframework.zip", checksum: "80b53dcf1cb4a9d579d5847aac0938451905701b27cab995ceec94fbb3537c93"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240306/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8644d6d91d8859e10e16c56208645344cc38e99427983a3cc1c8fe4a2ea60cfa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240306/TensorFlowLiteCMetal.xcframework.zip", checksum: "0e08c99c91b656104d04c2e87e7feb48b49886c457fddb262bafe8d935b87358"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
