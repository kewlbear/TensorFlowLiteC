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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220824/TensorFlowLiteC.xcframework.zip", checksum: "1d35a88ac1e02e8b59cf84eaa4f23424f857b70801a31dd8858c4ea3155b13de"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220824/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d4551d9079b78144d0671ad2238a0134cc3710a02bfe01b2add48a928b4e1dbd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220824/TensorFlowLiteCMetal.xcframework.zip", checksum: "3455eefadf743d1d55c06998216f76a32e56896d94682e5d9b5acf999a632512"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
