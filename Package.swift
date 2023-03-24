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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230323/TensorFlowLiteC.xcframework.zip", checksum: "a14746b270d8d5ef226442c4d23a5750b419a6846643fe2684c2e7072285b470"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230323/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a767313438577ed55ea42afd7cfa3cac66d88083c8533ae8089f4e6fb1ee0704"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230323/TensorFlowLiteCMetal.xcframework.zip", checksum: "fe23afee97ff48d35372079b550124721a66c12dcf178b88b1177ac1882bcb3a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
