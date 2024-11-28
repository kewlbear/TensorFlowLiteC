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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteC.xcframework.zip", checksum: "6bc69b0f780393cd04180472a0fd5a057bc98b8fd7c3d0afb427890cf84f20af"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fa5ff386583cb7fa331b60de8ea3190bbacc40bb636e9ea051e45635f6b89e58"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteCMetal.xcframework.zip", checksum: "689dfc3a31788b3ca5162abc9ffdf2ff501d495cf26826d4afdf6acb259cd13b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
