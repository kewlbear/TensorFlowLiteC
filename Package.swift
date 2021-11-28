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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211127/TensorFlowLiteC.xcframework.zip", checksum: "ca091a5c325e048eaa45e2b9c8ac395f7629a6f9295a70d30bde4d1023302f8c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2999ce0afd5dbdd020c757c55c572e08db36aed5598daff18e2398c5fceedc96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211127/TensorFlowLiteCMetal.xcframework.zip", checksum: "435a1e77232def629e3c0d695bafc6f7a1e008f8f878583caa61b28a8b9b154e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
