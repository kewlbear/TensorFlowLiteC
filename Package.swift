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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230803/TensorFlowLiteC.xcframework.zip", checksum: "1fbe90cdef6480730cc456f8f939e8b0d9cd9fff2af1e980958bb57e865e9a11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230803/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d68354c0c612bceb85c8b6fd52b41aeb86b34e243ea14d4d9a071476a40ed27e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230803/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2905db2ad49e42cf7875abdd9511b405961b31a39744e3765e972e7e5395520"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
