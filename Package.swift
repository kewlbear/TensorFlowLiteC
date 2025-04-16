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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteC.xcframework.zip", checksum: "97ee71d6838657dc68186fb1c9d641f6f2065bb2a8e701f4b1464fcaf086d9ba"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5377b6a5f0d73de23f12c818033f0f6dea99d91cdc2be6e510e7e597ca2b8f3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteCMetal.xcframework.zip", checksum: "0dccc87e448d0b92409de86b6801616c83a3067e82f4fdd4bcb410d37acb05bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
