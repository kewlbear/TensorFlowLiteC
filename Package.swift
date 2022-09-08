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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220907/TensorFlowLiteC.xcframework.zip", checksum: "e834f9e9f8fbd58c4a075ad16cb4fbb77dc1c560d251dadc6b435985d29b92a2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220907/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a198885c7164114d22c320a49b37cf4b6a1079504bde6fc93706e8e60ae3c950"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220907/TensorFlowLiteCMetal.xcframework.zip", checksum: "2c1dd3bd597334f4be984e164e8b125aa8d54760a7453e0f13718003d22967d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
