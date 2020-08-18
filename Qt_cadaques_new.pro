TEMPLATE = app

QT += qml quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp


main_qml.path  =  $$OUT_PWD/qml
main_qml.files += $$PWD/qml/main.qml

folder_01.path  =  $$OUT_PWD/qml/
folder_01.files += $$PWD/qml/advanced

folder_02.path  =  $$OUT_PWD/qml/
folder_02.files += $$PWD/qml/components

folder_03.path  =  $$OUT_PWD/qml/
folder_03.files += $$PWD/qml/features

folder_04.path  =  $$OUT_PWD/qml/
folder_04.files += $$PWD/qml/advanced

folder_05.path  =  $$OUT_PWD/qml/
folder_05.files += $$PWD/qml/assets

folder_06.path  =  $$OUT_PWD/qml/
folder_06.files += $$PWD/qml/tests

# Default rules for deployment.
INSTALLS += target
INSTALLS += folder_01 folder_02 folder_03 folder_04 folder_05 folder_06 main_qml

#open ssl libs-----------------------------------------------------------

LIBS += -L/home/osboxes/opt/openssl-1.1.1c -lssl -lcrypto
INCLUDEPATH += /home/osboxes/opt/openssl-1.1.1c/include

#=========================================================================

DISTFILES += \
    qml/features/FSpriteAnimation.qml

