TEMPLATE = app

QT += qml quick
CONFIG += c++11
SOURCES += main.cpp
DEFINES += QT_DEPRECATED_WARNINGS
OTHER_FILES += main.qml keyboard/*.qml

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
