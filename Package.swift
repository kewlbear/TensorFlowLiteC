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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230513/TensorFlowLiteC.xcframework.zip", checksum: "4b72be4d65e2a13bf00067359e415f1e2a1e16a30e343cffa86b3889c8db5478"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7281e113d852772951f712fd37e16e44017dcaf7d9442e97d0c23e8863523896"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230513/TensorFlowLiteCMetal.xcframework.zip", checksum: "65dc37758b1e3feed5b9b4f438b667eaab5739a8609aa2020338739128e69547"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
