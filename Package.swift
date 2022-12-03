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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221202/TensorFlowLiteC.xcframework.zip", checksum: "34b052f9a431a55853c9f3a7cc3ac59260e50b72c036c72e668775ceb5cc0588"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9979e30fcd5b0c8589c726e8953207c77f09c8f13ae2e4e27a99b165a008c0ea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221202/TensorFlowLiteCMetal.xcframework.zip", checksum: "abe68c17f1c75b7acb7f798c89513d4d43f4342ebb366954dd483c91eec5af25"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
