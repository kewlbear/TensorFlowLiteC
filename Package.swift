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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221005/TensorFlowLiteC.xcframework.zip", checksum: "ef513077b4850f46ef9d56ad4aea5bb34c04af70a7c555e3801d1b158ae687cf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221005/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6a2e56065d501f14950dd65d63bc08eb3e9842f5d15ae155c839eb722ef47c72"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221005/TensorFlowLiteCMetal.xcframework.zip", checksum: "5b5d4a7617b26db3da4a15929383d969da809baee2071b98dcffae4b43cbab65"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
