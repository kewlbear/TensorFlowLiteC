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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteC.xcframework.zip", checksum: "cbb78d40dbe626aae758a0b3420c00decaa75921ffeb76f5d53a9cee11dfa8ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ced4c6dfa76eacb26585366c265f9370151cd9a912cdadc8f588a3a1b666cfbb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteCMetal.xcframework.zip", checksum: "13dc63a99e8275de85f24d4d4553c9826f4bbf1c2e6dedf0ea76cb8621921c5c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
