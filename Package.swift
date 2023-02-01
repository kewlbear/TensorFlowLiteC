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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230131/TensorFlowLiteC.xcframework.zip", checksum: "7d394b4665834fb612d1c882216f1f55f2102bf115ea10b9d58f808f5eae2992"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230131/TensorFlowLiteCCoreML.xcframework.zip", checksum: "209617300ca4b4ac700d4eff5254081ed5787baa026409aa5fabcbe9ad52576d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230131/TensorFlowLiteCMetal.xcframework.zip", checksum: "2516e796faf1e0e6091da6065e5dd8236c251a6a3f768e02c53eae38c821724b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
