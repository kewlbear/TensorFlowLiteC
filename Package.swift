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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240101/TensorFlowLiteC.xcframework.zip", checksum: "de2576748e089fbc137096d91598da6c5f98569b6c9d0285006775ea025bb225"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2bd1756d3544db5687f9996682b43643ffb29f99f89186763236356e8b76e8c8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240101/TensorFlowLiteCMetal.xcframework.zip", checksum: "78c129a95419736f37bae19c60cd0ef0aa24e4c3b332026d8e0d9993e32ba78b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
