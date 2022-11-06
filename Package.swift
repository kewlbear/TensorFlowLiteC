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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221105/TensorFlowLiteC.xcframework.zip", checksum: "3f774c08844958c51e257252b26cec9aefa0a4238b2f8cbd30520821804c2e83"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e72a2ca9a6a1299dcd2108e9f6750a54ada4f72f99d706e94c620142f7a0600"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221105/TensorFlowLiteCMetal.xcframework.zip", checksum: "7bf3f986f8e7bc5ac3795227fa69189ec8119366a4d58afce2ba2e89a3fcaf3c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
