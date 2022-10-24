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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221023/TensorFlowLiteC.xcframework.zip", checksum: "2426b61ab94528bf4b69b9fc849642637138c5129a19faf480e0f2e277176e13"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221023/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26bca2b43730ac46189ff9564b045f04deb9ff7c44fc6f97ce0738c8c86aceaf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221023/TensorFlowLiteCMetal.xcframework.zip", checksum: "e9645b313172834272d0adf71f196c20990a11a08b6b4893cb5dc38134aa6758"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
