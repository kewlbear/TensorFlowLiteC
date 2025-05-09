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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteC.xcframework.zip", checksum: "185f91e3f147f1c732e69f81ce0ab722806f84dc853f2248f45146985fe0d8a4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c413bafe0d221e9804600221efe27d4ec5fc4d091b0ded3a90dfd98aaaa2acf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteCMetal.xcframework.zip", checksum: "b13bb0d752064a73e165d9a98d786b6035b1ad2b021243f3f6ba031dd88da807"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
