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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210619/TensorFlowLiteC.xcframework.zip", checksum: "b5a9a4960381638626ed13944ae28d42142a2aca259cb45591e019206073d915"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210619/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8a9f7743dd172c41286580dfff1480a7515d01a1eebaeb23bf644496545d1f5d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210619/TensorFlowLiteCMetal.xcframework.zip", checksum: "66b4526bbccd3ddadf2fe73a8e4057e6ba285c482c8687022592627078557c9f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
