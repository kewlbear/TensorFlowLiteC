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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230921/TensorFlowLiteC.xcframework.zip", checksum: "8e35d4db75aa3da7975589022c7a1d72227ca091483cc800a22b3c5f178b1986"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230921/TensorFlowLiteCCoreML.xcframework.zip", checksum: "407200c52b2e0863839bcfcf861c6bffe0abd4a851bee4cd65029c8bcb4bc215"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230921/TensorFlowLiteCMetal.xcframework.zip", checksum: "a5f64626fc760ac11413dc016968d892f13e8e752928c607080cc77d60f870bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
