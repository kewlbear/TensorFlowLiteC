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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230418/TensorFlowLiteC.xcframework.zip", checksum: "6ddd238c407fda6d6315f93ca8710a5fc391461763c12b806eb96251b85bb91c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "27ddfc0161bc25601cd85fbc76c8d2394600643b348f8b6014fae1e22dc018ef"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230418/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc006eb08d6688ff1b2b7f62f4f58842744f0c9952ffd656d0715566e2be291d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
