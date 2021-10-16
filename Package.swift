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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211015/TensorFlowLiteC.xcframework.zip", checksum: "bd811123b8127689b6f02f7dbac1e96a233f56d81190fb4d0199bc78f2db7743"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211015/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ee7f89396aec383de242cba013f8a84246885dcc7a917296e34b0ff4bb9a26b5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211015/TensorFlowLiteCMetal.xcframework.zip", checksum: "3107b13378235ad016ddc2fd2b46eeaa2388f25b66d663abe2619f8c1393166f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
