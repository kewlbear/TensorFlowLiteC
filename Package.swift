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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210717/TensorFlowLiteC.xcframework.zip", checksum: "a12a8223115a7717f11d78a74328cc26f58c83569caaf32a130148804aac4f9b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210717/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9370e03332e70241e5e46044ae934b1569c078f9c9f5fccb3e77bb4d90ee8691"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210717/TensorFlowLiteCMetal.xcframework.zip", checksum: "045dd4c86ebc4a7a8f3b5dcf529c44e2871ecb77ae0dad860b367210a95ba4ed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
