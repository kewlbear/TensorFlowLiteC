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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteC.xcframework.zip", checksum: "372e575f803731e02c98ad80bd68dabc11a9c9a3a2d740ededa45accd7400737"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c4295d301dcd701a4f99f08cb3016cf0278d0c43c12e936348166a0a02ea61e4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteCMetal.xcframework.zip", checksum: "b6ac4d5374cd79818bad23b6af95beebdd2d138a072753826e818f3713834544"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
