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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231231/TensorFlowLiteC.xcframework.zip", checksum: "b5b3103139ef0c47faadb9ba79e1ed9e4395ae3685ebfdac64d256052f50331c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231231/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ad6ee1b44e554f1e05900139f3b6e9c0a1160ca718ae3a978b456b81e1b6613"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231231/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f2724e376e562e3347e067659a927ef14c8130e1fcb09bb0bc4ffd0453b9260"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
