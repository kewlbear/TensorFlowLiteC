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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210824/TensorFlowLiteC.xcframework.zip", checksum: "63291605677f38af80bd6d7a5e67370da1e29f70e689fd39967218fb10f84737"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210824/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c29103205f66cc89da433218c75509d9c97776e969392bd9c6f038a1c06cef5f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210824/TensorFlowLiteCMetal.xcframework.zip", checksum: "365bd987779be268bc457ff0abdeb85e021e7d4a0c1bd8341b9a147fd5a80d8c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
