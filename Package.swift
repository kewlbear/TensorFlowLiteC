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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211008/TensorFlowLiteC.xcframework.zip", checksum: "7c1625181c2df4729c19f45055e88cbed68019f4548794c1a3101fa822b70ff7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211008/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cac940aaece672787960904545c60ebed0ff9743d4e8d0e5f52ec7919c9f66ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211008/TensorFlowLiteCMetal.xcframework.zip", checksum: "8d2be2a195d2608171496266943c3a680aaff00835df8abc2d3aefe72f11768d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
