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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240102/TensorFlowLiteC.xcframework.zip", checksum: "03d24c375e1cce7847e6cef2f1fbbaa36b40ba475aeaddb5bf5849d48076064b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b93519afb960ab8254dd58014a5917a39a2cfde2f642241867dba0c145fa50e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240102/TensorFlowLiteCMetal.xcframework.zip", checksum: "5ea930fee3d8fd2a8cebc3f1345bbaf6634fe3e5e962de5b3966d543271c96c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
