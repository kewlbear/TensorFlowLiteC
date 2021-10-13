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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211012/TensorFlowLiteC.xcframework.zip", checksum: "5fda0846993fce772a538d6ab1766c7009b239fe6b416535c31add90d3096d5f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211012/TensorFlowLiteCCoreML.xcframework.zip", checksum: "17a03d2adb1e16ac2235671a11b27e05848f24be7f1b4088ec52895d35d0d98d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211012/TensorFlowLiteCMetal.xcframework.zip", checksum: "cad83a21bcdb7038d0792ae77ce18ecbf6788be22288f1027ec3a175518efbbd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
