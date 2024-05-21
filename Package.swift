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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240520/TensorFlowLiteC.xcframework.zip", checksum: "10ee77dbb18371197507e88dcf3bee99e6c5642597e872f6e0640bf5a9e41dc1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0dfb198d5b50f5b29e865cce05d6d807b54013e156c6d56be7b1da84dc1ab74c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240520/TensorFlowLiteCMetal.xcframework.zip", checksum: "3ba15724a05ff1085a04cd4864b0d8464a0d04575d0a24fb2491c8e096d90d78"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
