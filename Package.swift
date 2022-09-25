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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220924/TensorFlowLiteC.xcframework.zip", checksum: "3d11dc84e8219e358334edf079084a47de39b56aa81befa2535cc55298f9a382"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220924/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9c74f659e967df9d3acd5ca85ea8acd112bf3c83180382e8b8068369e1edb940"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220924/TensorFlowLiteCMetal.xcframework.zip", checksum: "3aa7457ba3f257047c9e318d7010472ef132bb24c509a12bfa45df6d75763a7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
