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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220914/TensorFlowLiteC.xcframework.zip", checksum: "88b9789dbe4a967221d0c37e839ac4d02cd20c9067beff0072f32fd7e0fe5857"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220914/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c9ad37b4ab7742af3af87da7fe08080d8418f58acf414cacb6de21c2d9b29753"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220914/TensorFlowLiteCMetal.xcframework.zip", checksum: "e9cb919a98730b0482432b47c86ae91b3eb6f9157ffc67a5205ba2746285087b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
