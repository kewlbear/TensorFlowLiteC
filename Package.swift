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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteC.xcframework.zip", checksum: "daaee25a9f9fc2449b6d2d0078bfe75e958951a1a0e877daca1cef2318407285"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteCCoreML.xcframework.zip", checksum: "edaaabcd3bd071a35ab40cc623aeaa2fa1c02259e5a25120df5e7144e0d6c28b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteCMetal.xcframework.zip", checksum: "3171dbab12c4cf2a9bee727a562b5a3b133dc80c2b69c1409c0c383ad8e2a470"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
