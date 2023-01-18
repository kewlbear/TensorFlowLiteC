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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230117/TensorFlowLiteC.xcframework.zip", checksum: "30eb66caab72a8a75954eda69070677757bab9721d01b8ffcdeb52cc0917ac4f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "22c1dbfe86139a06038f670246822e9ee0a34dd1b72a58b990336e465dfda728"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230117/TensorFlowLiteCMetal.xcframework.zip", checksum: "add18611cd9ad48a63d3f543af4d892d9315f070a4d6170bc905fd70a0a861ba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
