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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230304/TensorFlowLiteC.xcframework.zip", checksum: "1c3d09e4bf9d8845bd304426c8ff72c57db0aa7ae4aa844ca49dc378077923fc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230304/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a94b11d8ea4900e3b5ddc6fdfacce45ee671993b379f7128718d895f1804a686"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230304/TensorFlowLiteCMetal.xcframework.zip", checksum: "52b6f7383b3205827febbadc85a42f8ab354eb4abd56aa4ad8de2279a00a4e98"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
