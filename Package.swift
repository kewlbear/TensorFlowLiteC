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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221225/TensorFlowLiteC.xcframework.zip", checksum: "5e9d85c7ca35ba12753d7087d92be605748850ca90e67133768e8492cc744919"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e87c4dc54b57f04290c2b644fa25f61d81d4e321860987374bd306ed407f9f7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221225/TensorFlowLiteCMetal.xcframework.zip", checksum: "b5130f20dd14f072b750da7be3f3fd7be765c19ba2396a28ef8dfd357e9314e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
