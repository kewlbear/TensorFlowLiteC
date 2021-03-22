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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteC.zip", checksum: "ef8e88230abe1f6c54fdcd03a690e4caa7e51dfd531e87537070c781602ad115"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCCoreML.zip", checksum: "6c4f37ae41081d9a1333bd8b375c4f38bb6cc8733787bcee526bed79c802ee85"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCMetal.zip", checksum: "516fd49dc00e656e37f60df58997ae0504b2298bd3302d5662474ad5fd810af9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
