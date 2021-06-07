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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210606/TensorFlowLiteC.xcframework.zip", checksum: "181fff06ed7ac0b69b09950313826b4c4b353f5b9ea422202a0a8f13f980e54e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7f6ad804888211b56277d3f7303296e484eb54e7758b5397f70c3084e881097d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210606/TensorFlowLiteCMetal.xcframework.zip", checksum: "49499d76cbb1b25afd825829557de664044cf96f661bc970481ea28b97da9e08"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
