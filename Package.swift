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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteC.xcframework.zip", checksum: "26a10d7242e3e99960ebb38b803aa7a7ebc2d0c7136f80b4f8a5071ddda6b3ed"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d2d18c04c28703319d0f954f7b60031acb29ba20e875c2e73c01b312281b22da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteCMetal.xcframework.zip", checksum: "b6f7e2b871e3d0b6fcb117364cdb57a38f31513e4d9fa7b89524b18afe54545b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
