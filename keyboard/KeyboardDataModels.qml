import QtQuick 2.4

QtObject {
    readonly property ListModel row1: ListModel {
        ListElement { primaryKey: "Q"; secondaryKey: "1"  }
        ListElement { primaryKey: "W"; secondaryKey: "2"  }
        ListElement { primaryKey: "E"; secondaryKey: "3"  }
        ListElement { primaryKey: "R"; secondaryKey: "4"  }
        ListElement { primaryKey: "T"; secondaryKey: "5"  }
        ListElement { primaryKey: "Y"; secondaryKey: "6"  }
        ListElement { primaryKey: "U"; secondaryKey: "7"  }
        ListElement { primaryKey: "I"; secondaryKey: "8"  }
        ListElement { primaryKey: "O"; secondaryKey: "9"  }
        ListElement { primaryKey: "P"; secondaryKey: "0"  }
    }

    readonly property ListModel row2: ListModel {
        ListElement { primaryKey: "A"; secondaryKey: "!"  }
        ListElement { primaryKey: "S"; secondaryKey: "@"  }
        ListElement { primaryKey: "D"; secondaryKey: "#"  }
        ListElement { primaryKey: "F"; secondaryKey: "$"  }
        ListElement { primaryKey: "G"; secondaryKey: "%"  }
        ListElement { primaryKey: "H"; secondaryKey: "&"  }
        ListElement { primaryKey: "J"; secondaryKey: "*"  }
        ListElement { primaryKey: "K"; secondaryKey: "?"  }
        ListElement { primaryKey: "L"; secondaryKey: "/"  }
    }

    readonly property ListModel row3: ListModel {
        ListElement { primaryKey: "Z"; secondaryKey: "_"  }
        ListElement { primaryKey: "X"; secondaryKey: "\""  }
        ListElement { primaryKey: "C"; secondaryKey: "("  }
        ListElement { primaryKey: "V"; secondaryKey: ")"  }
        ListElement { primaryKey: "B"; secondaryKey: "-"  }
        ListElement { primaryKey: "N"; secondaryKey: "+"  }
        ListElement { primaryKey: "M"; secondaryKey: ";"  }
        ListElement { primaryKey: ","; secondaryKey: ","  }
        ListElement { primaryKey: "."; secondaryKey: "."  }
        ListElement { primaryKey: "'"; secondaryKey: "'"  }
    }
}
