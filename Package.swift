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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240824/TensorFlowLiteC.xcframework.zip", checksum: "c42362abfb230b23b444414243e3a8b2145bd757339206b372f257ce6293f15d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240824/TensorFlowLiteCCoreML.xcframework.zip", checksum: "467a99c51ba73d3067fe75f72774469a6dfedc8f2cadfd67afa8047083cacc44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240824/TensorFlowLiteCMetal.xcframework.zip", checksum: "501782d95bf909c8be00194922251c4ef7fa1ee2e6637e4463f6de1e50db03d2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
