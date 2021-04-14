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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210413/TensorFlowLiteC.xcframework.zip", checksum: "66884efe874ace0c0c4f900a0dacc8d29687c0c58b584b4e871c5a8917f9c880"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "394286d94ab79d24fd85d871cf87d8b5edad541518fd79a3d7abcd13fdb7f0c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210413/TensorFlowLiteCMetal.xcframework.zip", checksum: "64c199a1ddd67038c9da14ff6233bbd2009f721f108bb3183313c9bef45d6904"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
