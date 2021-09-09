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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210908/TensorFlowLiteC.xcframework.zip", checksum: "debd64cb700c9131ae51f5fdb30da16a7b95c8690eb422249df4afaf491a7563"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210908/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f44419b440b13ac69ee2743962e93bb35eb3fef9fcb124a69d250c174bfc09c7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210908/TensorFlowLiteCMetal.xcframework.zip", checksum: "dd004e3beced861ffb13e74fe2ec655f502d550d92e32a752376fc6364d0cbef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
