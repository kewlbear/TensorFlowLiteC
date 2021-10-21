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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211020/TensorFlowLiteC.xcframework.zip", checksum: "cb5267c48102182872b06929db1c34e6994ea76586de728bc3939f372e87b0a9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211020/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c9fabaa8f04cbbe43d25a4dea2499d47c7a3a181c79a49ef359f438c6c9a734"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211020/TensorFlowLiteCMetal.xcframework.zip", checksum: "3cf1693ab2290a4477036b45b4bf7b652fa7e37e0e7928e5ace29cc701073f37"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
