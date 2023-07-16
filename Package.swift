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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230715/TensorFlowLiteC.xcframework.zip", checksum: "830af0a872f18852e9e882dcd6cd36bf1b75c48ce02e39c534625c1ff4d592c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230715/TensorFlowLiteCCoreML.xcframework.zip", checksum: "98c26fcac9a152a493561cf374af585d5cb257ee154e06c477e83e818a3078c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230715/TensorFlowLiteCMetal.xcframework.zip", checksum: "ec24a3c971045ad09f385cf7e654d687c93502240c79c3271d4fe4c3960fbea8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
