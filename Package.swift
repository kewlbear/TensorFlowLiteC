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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230411/TensorFlowLiteC.xcframework.zip", checksum: "4e12b6498c6ec0c6119d3c6f816927046aa76663dbe0e1f5f7595f4bec8e0235"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230411/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8bc62a6287eae888e2f706b28d4878c8cb1730e5987115e00d976a5ef4c07562"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230411/TensorFlowLiteCMetal.xcframework.zip", checksum: "7403b5be24b275ec08ce8e23050a5243bad4ab7856fa2f99a21a336872778cc9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
