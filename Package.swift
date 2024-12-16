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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteC.xcframework.zip", checksum: "6f87c593333ae262b09d4bdc6b1c055a33c3145424f0399ad18273c463218dee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8bd596362e581565405d665c82def3342a9e35eda9bbd4584f390e3cac3774f2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteCMetal.xcframework.zip", checksum: "6221689fdf340225bebb44cdd55bde6a3027c5b3b085fa286dcf1cc51883207a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
