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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230913/TensorFlowLiteC.xcframework.zip", checksum: "9173733cf10e74871527073377d5430c2dcbe4e1ba3b6b6c16e1b0accb047d60"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230913/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c53e45932f7cdbb3ac50ed346ec35750f603d5f7ecdc97a135f575953624a38c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230913/TensorFlowLiteCMetal.xcframework.zip", checksum: "7ba87e7268da3d35a4c8ae995c4d4161e6ab1c7db7e1137688e3dca01cd077a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
