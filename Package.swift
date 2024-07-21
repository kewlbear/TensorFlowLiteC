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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240720/TensorFlowLiteC.xcframework.zip", checksum: "d7bebebaacac7cd88e43c43738bfa3a4d93a8597431917ae7491a83c27e40e66"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240720/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b588e8823024e126a50ded936bda023773987f2d68395dd9fd23c68b042b6d04"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240720/TensorFlowLiteCMetal.xcframework.zip", checksum: "90006d52ebb679e367fae08027944d91fa786774ba6d05f558be695816c088d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
