TEMPLATE = app
QT += network
QT += script
QT += printsupport
QT += widgets

include(../../config.pri)
PROJECT_DIR = $$PWD
PROJECT_BUILD_DIR = $$shadowed($$PWD)
PROJECT_DIR_QSCI = $${PROJECT_ROOT_DIR}/src/qscintilla/qscintilla
PROJECT_BUILD_DIR_QSCI = $${PROJECT_ROOT_BUILD_DIR}/src/qscintilla

DIRS_TO_COPY = $${PROJECT_DIR}/universalindent/config
DIRS_TO_COPY += $${PROJECT_DIR}/universalindent/indenters

linux-g++ {
    QSCI_LIB_FILE = $${PROJECT_ROOT_BUILD_DIR}/src/qscintilla/libqscintilla.so
    QMAKE_POST_LINK += $$quote(cp $${QSCI_LIB_FILE} $${PROJECT_BUILD_DIR}/.$$escape_expand(\n\t))
    for(DIR, DIRS_TO_COPY) {
        QMAKE_POST_LINK += $$quote(cp -r $${DIR} $${PROJECT_BUILD_DIR}/.$$escape_expand(\n\t))
    }
}

#CONFIG(debug, debug|release) {
#    DEFINES += _DEBUG DEBUG
#}

MOC_DIR = moc
UI_DIR = uic
OBJECTS_DIR = obj
RCC_DIR = qrc

LIBS += -lqscintilla -L$${PROJECT_BUILD_DIR_QSCI}
# Add the local directory of the binary to library search path
QMAKE_RPATHDIR += "."

QMAKE_LFLAGS += -no-pie

INCLUDEPATH += $${PROJECT_DIR_QSCI}/Qt4Qt5
INCLUDEPATH += overrides
INCLUDEPATH += universalindent/src

DEPENDPATH += overrides
DEPENDPATH += universalindent/src
DEPENDPATH += universalindent/resources

HEADERS += universalindent/src/AboutDialog.h \
           universalindent/src/AboutDialogGraphicsView.h \
           universalindent/src/IndentHandler.h \
           universalindent/src/MainWindow.h \
           universalindent/src/SettingsPaths.h \
           universalindent/src/TemplateBatchScript.h \
           universalindent/src/UiGuiErrorMessage.h \
           universalindent/src/UiGuiHighlighter.h \
           universalindent/src/UiGuiIndentServer.h \
           universalindent/src/UiGuiIniFileParser.h \
           universalindent/src/UiGuiSettings.h \
           universalindent/src/UiGuiSettingsDialog.h \
           universalindent/src/UiGuiSystemInfo.h \
           universalindent/src/UiGuiVersion.h \
           universalindent/src/UpdateCheckDialog.h \
           universalindent/src/debugging/TSLogger.h


FORMS += universalindent/src/MainWindow.ui \
         universalindent/src/ToolBarWidget.ui \
         universalindent/src/UiGuiSettingsDialog.ui \
         universalindent/src/AboutDialog.ui \
         universalindent/src/UpdateCheckDialog.ui \
         universalindent/src/debugging/TSLoggerDialog.ui

SOURCES += universalindent/src/AboutDialog.cpp \
           universalindent/src/AboutDialogGraphicsView.cpp \
           universalindent/src/IndentHandler.cpp \
           universalindent/src/MainWindow.cpp \
           universalindent/src/SettingsPaths.cpp \
           universalindent/src/TemplateBatchScript.cpp \
           universalindent/src/UiGuiErrorMessage.cpp \
           universalindent/src/UiGuiHighlighter.cpp \
           universalindent/src/UiGuiIndentServer.cpp \
           universalindent/src/UiGuiIniFileParser.cpp \
           universalindent/src/UiGuiSettings.cpp \
           universalindent/src/UiGuiSettingsDialog.cpp \
           universalindent/src/UiGuiSystemInfo.cpp \
           universalindent/src/UiGuiVersion.cpp \
           universalindent/src/UpdateCheckDialog.cpp \
           universalindent/src/debugging/TSLogger.cpp \
           overrides/main.cpp
           #universalindent/src/main.cpp

RESOURCES += universalindent/resources/Icons.qrc
RC_FILE    = universalindent/resources/programicon.rc
