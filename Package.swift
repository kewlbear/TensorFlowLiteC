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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230828/TensorFlowLiteC.xcframework.zip", checksum: "416e02abfab13badff3584f8bc054a0c83d0c9ced395f24d832ba6623d46473f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230828/TensorFlowLiteCCoreML.xcframework.zip", checksum: "19d2f78677f819491c63c9e39941add03e94a45230deee30dd14f16dcbf06b61"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230828/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ce0f26e379c9759240e2b32912c1cb654e0b7ba305d4a44e8e2ac9286e42b25"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
