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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210517/TensorFlowLiteC.xcframework.zip", checksum: "fe97544ffeb89b3776bd20018ba546953d9340c3df666488ee44c94df6fb2dd1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ca23338ab929c75fa0fa9b21be83e8153ff835153e09e1510d79ba2791dd5998"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210517/TensorFlowLiteCMetal.xcframework.zip", checksum: "7572439a21eadeaaf388bfde54820386d68f510ee7e13f8009b4e4f8b547efae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
