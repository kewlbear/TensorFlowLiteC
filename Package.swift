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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230405/TensorFlowLiteC.xcframework.zip", checksum: "06f48c31fa50419e6088621056eeec30c20ba95de68793f313c8ecbb9646dfd2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230405/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d9a406a4360b53fc3bf9a01d8fabeeee820c241d804dc1c1d1155b6398e6951a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230405/TensorFlowLiteCMetal.xcframework.zip", checksum: "59eefbd201ff4352b200f1d9cae2c0f2076fcd28ce660178b04f2185c459b12a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
