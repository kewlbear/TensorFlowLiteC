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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240512/TensorFlowLiteC.xcframework.zip", checksum: "34c75873690e9683a0fb92f8c62d1d40bb9c20afc30106d1d246a31d1ae170cf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "349f075f0e7cdfc7fb00f4fb423db346bb56cab2c53352258a0dba01712f49fe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240512/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3c2bb0c025716d32f89afb98e5ec2d840a10558770563e3937921b4a8ecebcb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
