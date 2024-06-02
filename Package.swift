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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240601/TensorFlowLiteC.xcframework.zip", checksum: "401a6bce74e68bd6bbe369cd2c3807e92b160f524d77a7a18a3679ac24155d79"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b4719157e269616254edba7575db07f0a58bed31e1f08c402698f407b1ab3f0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240601/TensorFlowLiteCMetal.xcframework.zip", checksum: "3d4fcfbd06d6d700b8e2ceec829bf6d27c95236f4b5d49d3a4e58753e537d0bb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
