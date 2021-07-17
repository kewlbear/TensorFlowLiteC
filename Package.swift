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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210716/TensorFlowLiteC.xcframework.zip", checksum: "e344f32af42bcedb96be73d0577dc80c96873b87e557e83d5967a2e3ddd42f04"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210716/TensorFlowLiteCCoreML.xcframework.zip", checksum: "afeacafb597398e084c0eb7e2116020484d19d856af7e81e264320e27f11a1d4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210716/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef667554764f20800f92a25414876491eeb175c0abe138dfb0494a3d3531e5bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
