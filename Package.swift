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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210419/TensorFlowLiteC.xcframework.zip", checksum: "a43ebabcffe7daf72cbb8b8f6f7b893f2a777fd0185cdc176df37c370f97975e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b8f4d17c5c8d2568cf043d90c6cd2cada7ce0048fc33d646d123974a1817ad81"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210419/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c795f6381fcf277b26f5ec3c87bfa7047cf8dfb928f291a0419c46269d91e09"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
