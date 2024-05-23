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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240522/TensorFlowLiteC.xcframework.zip", checksum: "9957b88fd276a566a09b0da398f7ce54598896ba58d0493ea1b555850935eedc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240522/TensorFlowLiteCCoreML.xcframework.zip", checksum: "24c7024288b8d301a3d4fbfdfe8103c4ce29cfbaa2a542b07898621ed5d6ff92"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240522/TensorFlowLiteCMetal.xcframework.zip", checksum: "216ad5aa955a9514ef808943ce0cd694192f6c9332aeab87ca24eeca8a3ee990"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
