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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteC.xcframework.zip", checksum: "a840f4674f35061775729d3948182eae7b56f3f35e82b6bffc663c43c1f38daf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a756aaee69933ee54cd7a025951751a2fa22f6fb322999f4296855ea317ab981"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteCMetal.xcframework.zip", checksum: "7ed52cd20ff5eccbdd2147df1d75f58b265aaf415cd73c330412321cfbf06c71"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
