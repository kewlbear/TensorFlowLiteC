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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230404/TensorFlowLiteC.xcframework.zip", checksum: "ca7f2511fe8dd70eecf2a4893ea2f1ce9895252160c32048e488a0eed6ee0750"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230404/TensorFlowLiteCCoreML.xcframework.zip", checksum: "48c494277e36981958ce7b2f1f5c599ed281efb045bed4c330b6347436b1be78"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230404/TensorFlowLiteCMetal.xcframework.zip", checksum: "1124f0172bcef6078c4c1c70173aa453d6510c4ce39d09291723af18b70aec8d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
