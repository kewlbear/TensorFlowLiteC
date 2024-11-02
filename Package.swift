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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteC.xcframework.zip", checksum: "6d51eeb6d976dc71fdf7deafd7fd932f6fb912372a7311fb2eba44070fa0cc97"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88d07978a117c472391d32cc34a247ee114a0acf77e67df57c81a07d912f0850"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteCMetal.xcframework.zip", checksum: "81fce0f30e4f324bbc05ca40d2c2f4891f94a516ad35129017e8af24cbf2e653"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
