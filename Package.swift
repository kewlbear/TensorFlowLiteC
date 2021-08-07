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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210806/TensorFlowLiteC.xcframework.zip", checksum: "f774a48d23495883acc9a46c2e49c1936fe2e7218b96876637e76b7ac3172cad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210806/TensorFlowLiteCCoreML.xcframework.zip", checksum: "726f8ecb9818de62d2ceb71c89c664b94ea3d29bbf523138d4229b1596d363b1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210806/TensorFlowLiteCMetal.xcframework.zip", checksum: "684568ebf590b99f93282b1708885bebdf58240e3a1ec7377fcffa26e367744b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
