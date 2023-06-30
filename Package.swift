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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230629/TensorFlowLiteC.xcframework.zip", checksum: "92801ab3d4a1813acb6d7ac3b5cb18e14fdac74a1dcc3d9ffecf31105eea09e3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230629/TensorFlowLiteCCoreML.xcframework.zip", checksum: "75348c35c9f67dd5a8ea324bd6ccfb1471bd8a3ff8c51a759f665653076f3491"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230629/TensorFlowLiteCMetal.xcframework.zip", checksum: "7a989b4f5814a9f54abd06ab0c7489e79c25d4014e0c7c0b661bd856700a5f63"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
