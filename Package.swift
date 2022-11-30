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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221129/TensorFlowLiteC.xcframework.zip", checksum: "0a7c926885972f9483b2870215c4e100eecbb22f507496f9fbc02fe2a1e9e758"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d94a0521e74ab98d373437ccd4396c819ac6e4b4e73bd09d7330cd877728e7eb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221129/TensorFlowLiteCMetal.xcframework.zip", checksum: "aed327011eb9ea215bf021ae6e3e93a7d54059610fc40a578dbb8fc2c6f62647"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
