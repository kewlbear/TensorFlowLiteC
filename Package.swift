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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230105/TensorFlowLiteC.xcframework.zip", checksum: "549d1181098dc3447c8b06e409a17f2acb84f67d6f3e5416f97efc133a91a0ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "596219cd78b4a7ee0f43ef7c181012e8f148facade055b1f817e7b1a05424934"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230105/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ba6094c05561f7e544b38d7b4909c9a2de7e7a68ba8501cda0edeb5d1cd5a46"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
