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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231018/TensorFlowLiteC.xcframework.zip", checksum: "dc51de4977c1fd653a67d20af362957b3302d7d8673c55e9f30ca83cbdb2308d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231018/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a7077a41b990e6e5780278f2f622b7b939acc9bf3e6451279baf073a33ef3e39"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231018/TensorFlowLiteCMetal.xcframework.zip", checksum: "2ec2354304dce013bb246ca19c8949210b7294f80f8fd0a8def5c2640a7866c1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
