import QtQuick 2.0

Item {
    property alias row1: row1Model
    property alias row2: row2Model
    property alias row3: row3Model

    ListModel {
        id: row1Model
        ListElement { primaryCharacter: "Q"; secondaryCharacter: "1"  }
        ListElement { primaryCharacter: "W"; secondaryCharacter: "2"  }
        ListElement { primaryCharacter: "E"; secondaryCharacter: "3"  }
        ListElement { primaryCharacter: "R"; secondaryCharacter: "4"  }
        ListElement { primaryCharacter: "T"; secondaryCharacter: "5"  }
        ListElement { primaryCharacter: "Y"; secondaryCharacter: "6"  }
        ListElement { primaryCharacter: "U"; secondaryCharacter: "7"  }
        ListElement { primaryCharacter: "I"; secondaryCharacter: "8"  }
        ListElement { primaryCharacter: "O"; secondaryCharacter: "9"  }
        ListElement { primaryCharacter: "P"; secondaryCharacter: "0"  }
    }

    ListModel {
        id: row2Model
        ListElement { primaryCharacter: "A"; secondaryCharacter: "!"  }
        ListElement { primaryCharacter: "S"; secondaryCharacter: "@"  }
        ListElement { primaryCharacter: "D"; secondaryCharacter: "#"  }
        ListElement { primaryCharacter: "F"; secondaryCharacter: "$"  }
        ListElement { primaryCharacter: "G"; secondaryCharacter: "%"  }
        ListElement { primaryCharacter: "H"; secondaryCharacter: "&"  }
        ListElement { primaryCharacter: "J"; secondaryCharacter: "*"  }
        ListElement { primaryCharacter: "K"; secondaryCharacter: "?"  }
        ListElement { primaryCharacter: "L"; secondaryCharacter: "/"  }
    }

    ListModel {
        id: row3Model
        ListElement { primaryCharacter: "Z"; secondaryCharacter: "_"  }
        ListElement { primaryCharacter: "X"; secondaryCharacter: "\""  }
        ListElement { primaryCharacter: "C"; secondaryCharacter: "("  }
        ListElement { primaryCharacter: "V"; secondaryCharacter: ")"  }
        ListElement { primaryCharacter: "B"; secondaryCharacter: "-"  }
        ListElement { primaryCharacter: "N"; secondaryCharacter: "+"  }
        ListElement { primaryCharacter: "M"; secondaryCharacter: ";"  }
        ListElement { primaryCharacter: ","; secondaryCharacter: ","  }
        ListElement { primaryCharacter: "."; secondaryCharacter: "."  }
        ListElement { primaryCharacter: "'"; secondaryCharacter: "'"  }
    }
}
