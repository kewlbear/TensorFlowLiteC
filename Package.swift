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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221204/TensorFlowLiteC.xcframework.zip", checksum: "67d73f638c0000adc8748f307c8bf34e05d7f4ec686eaaf74cd7cfd31a4bd42c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5d1a61200fdc5178e9e97acc362f81e2ca174c28f8585ba6b31a7b0e355f946"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221204/TensorFlowLiteCMetal.xcframework.zip", checksum: "802d25713e124907558f4af48a2f7e38a975d9036ab152de07be6f0d23d9745a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
