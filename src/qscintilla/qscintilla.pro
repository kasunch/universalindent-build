TEMPLATE = lib

include(../../config.pri)

CONFIG += qt warn_off thread exceptions hide_symbols
CONFIG += plugin # Only create a single .so file

QT += widgets
QT += printsupport

CONFIG(debug, debug|release) {
    DEFINES += _DEBUG DEBUG
}

MOC_DIR = moc
UI_DIR = uic
OBJECTS_DIR = obj
RCC_DIR = qrc

!CONFIG(staticlib) {
    DEFINES += QSCINTILLA_MAKE_DLL
}
DEFINES += SCINTILLA_QT SCI_LEXER


INCLUDEPATH += qscintilla/Qt4Qt5
INCLUDEPATH += qscintilla/include
INCLUDEPATH += qscintilla/lexlib
INCLUDEPATH += qscintilla/src


HEADERS = \
        qscintilla/Qt4Qt5/Qsci/qsciglobal.h \
        qscintilla/Qt4Qt5/Qsci/qsciscintilla.h \
        qscintilla/Qt4Qt5/Qsci/qsciscintillabase.h \
        qscintilla/Qt4Qt5/Qsci/qsciabstractapis.h \
        qscintilla/Qt4Qt5/Qsci/qsciapis.h \
        qscintilla/Qt4Qt5/Qsci/qscicommand.h \
        qscintilla/Qt4Qt5/Qsci/qscicommandset.h \
        qscintilla/Qt4Qt5/Qsci/qscidocument.h \
        qscintilla/Qt4Qt5/Qsci/qscilexer.h \
        qscintilla/Qt4Qt5/Qsci/qscilexeravs.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerbash.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerbatch.h \
        qscintilla/Qt4Qt5/Qsci/qscilexercmake.h \
        qscintilla/Qt4Qt5/Qsci/qscilexercoffeescript.h \
        qscintilla/Qt4Qt5/Qsci/qscilexercpp.h \
        qscintilla/Qt4Qt5/Qsci/qscilexercsharp.h \
        qscintilla/Qt4Qt5/Qsci/qscilexercss.h \
        qscintilla/Qt4Qt5/Qsci/qscilexercustom.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerd.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerdiff.h \
        qscintilla/Qt4Qt5/Qsci/qscilexeredifact.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerfortran.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerfortran77.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerhtml.h \
        qscintilla/Qt4Qt5/Qsci/qscilexeridl.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerjava.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerjavascript.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerjson.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerlua.h \
        qscintilla/Qt4Qt5/Qsci/qscilexermakefile.h \
        qscintilla/Qt4Qt5/Qsci/qscilexermarkdown.h \
        qscintilla/Qt4Qt5/Qsci/qscilexermatlab.h \
        qscintilla/Qt4Qt5/Qsci/qscilexeroctave.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerpascal.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerperl.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerpostscript.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerpo.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerpov.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerproperties.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerpython.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerruby.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerspice.h \
        qscintilla/Qt4Qt5/Qsci/qscilexersql.h \
        qscintilla/Qt4Qt5/Qsci/qscilexertcl.h \
        qscintilla/Qt4Qt5/Qsci/qscilexertex.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerverilog.h \
        qscintilla/Qt4Qt5/Qsci/qscilexervhdl.h \
        qscintilla/Qt4Qt5/Qsci/qscilexerxml.h \
        qscintilla/Qt4Qt5/Qsci/qscilexeryaml.h \
        qscintilla/Qt4Qt5/Qsci/qscimacro.h \
        qscintilla/Qt4Qt5/Qsci/qsciprinter.h \
        qscintilla/Qt4Qt5/Qsci/qscistyle.h \
        qscintilla/Qt4Qt5/Qsci/qscistyledtext.h \
        qscintilla/Qt4Qt5/ListBoxQt.h \
        qscintilla/Qt4Qt5/SciAccessibility.h \
        qscintilla/Qt4Qt5/SciClasses.h \
        qscintilla/Qt4Qt5/SciNamespace.h \
        qscintilla/Qt4Qt5/ScintillaQt.h \
        qscintilla/include/ILexer.h \
        qscintilla/include/Platform.h \
        qscintilla/include/Sci_Position.h \
        qscintilla/include/SciLexer.h \
        qscintilla/include/Scintilla.h \
        qscintilla/include/ScintillaWidget.h \
        qscintilla/lexlib/Accessor.h \
        qscintilla/lexlib/CharacterCategory.h \
        qscintilla/lexlib/CharacterSet.h \
        qscintilla/lexlib/LexAccessor.h \
        qscintilla/lexlib/LexerBase.h \
        qscintilla/lexlib/LexerModule.h \
        qscintilla/lexlib/LexerNoExceptions.h \
        qscintilla/lexlib/LexerSimple.h \
        qscintilla/lexlib/OptionSet.h \
        qscintilla/lexlib/PropSetSimple.h \
        qscintilla/lexlib/StringCopy.h \
        qscintilla/lexlib/StyleContext.h \
        qscintilla/lexlib/SubStyles.h \
        qscintilla/lexlib/WordList.h \
        qscintilla/src/AutoComplete.h \
        qscintilla/src/CallTip.h \
        qscintilla/src/CaseConvert.h \
        qscintilla/src/CaseFolder.h \
        qscintilla/src/Catalogue.h \
        qscintilla/src/CellBuffer.h \
        qscintilla/src/CharClassify.h \
        qscintilla/src/ContractionState.h \
        qscintilla/src/Decoration.h \
        qscintilla/src/Document.h \
        qscintilla/src/EditModel.h \
        qscintilla/src/Editor.h \
        qscintilla/src/EditView.h \
        qscintilla/src/ExternalLexer.h \
        qscintilla/src/FontQuality.h \
        qscintilla/src/Indicator.h \
        qscintilla/src/KeyMap.h \
        qscintilla/src/LineMarker.h \
        qscintilla/src/MarginView.h \
        qscintilla/src/Partitioning.h \
        qscintilla/src/PerLine.h \
        qscintilla/src/PositionCache.h \
        qscintilla/src/RESearch.h \
        qscintilla/src/RunStyles.h \
        qscintilla/src/ScintillaBase.h \
        qscintilla/src/Selection.h \
        qscintilla/src/SplitVector.h \
        qscintilla/src/Style.h \
        qscintilla/src/UnicodeFromUTF8.h \
        qscintilla/src/UniConversion.h \
        qscintilla/src/ViewStyle.h \
        qscintilla/src/XPM.h

SOURCES = \
        qscintilla/Qt4Qt5/qsciscintilla.cpp \
        qscintilla/Qt4Qt5/qsciscintillabase.cpp \
        qscintilla/Qt4Qt5/qsciabstractapis.cpp \
        qscintilla/Qt4Qt5/qsciapis.cpp \
        qscintilla/Qt4Qt5/qscicommand.cpp \
        qscintilla/Qt4Qt5/qscicommandset.cpp \
        qscintilla/Qt4Qt5/qscidocument.cpp \
        qscintilla/Qt4Qt5/qscilexer.cpp \
        qscintilla/Qt4Qt5/qscilexeravs.cpp \
        qscintilla/Qt4Qt5/qscilexerbash.cpp \
        qscintilla/Qt4Qt5/qscilexerbatch.cpp \
        qscintilla/Qt4Qt5/qscilexercmake.cpp \
        qscintilla/Qt4Qt5/qscilexercoffeescript.cpp \
        qscintilla/Qt4Qt5/qscilexercpp.cpp \
        qscintilla/Qt4Qt5/qscilexercsharp.cpp \
        qscintilla/Qt4Qt5/qscilexercss.cpp \
        qscintilla/Qt4Qt5/qscilexercustom.cpp \
        qscintilla/Qt4Qt5/qscilexerd.cpp \
        qscintilla/Qt4Qt5/qscilexerdiff.cpp \
        qscintilla/Qt4Qt5/qscilexeredifact.cpp \
        qscintilla/Qt4Qt5/qscilexerfortran.cpp \
        qscintilla/Qt4Qt5/qscilexerfortran77.cpp \
        qscintilla/Qt4Qt5/qscilexerhtml.cpp \
        qscintilla/Qt4Qt5/qscilexeridl.cpp \
        qscintilla/Qt4Qt5/qscilexerjava.cpp \
        qscintilla/Qt4Qt5/qscilexerjavascript.cpp \
        qscintilla/Qt4Qt5/qscilexerjson.cpp \
        qscintilla/Qt4Qt5/qscilexerlua.cpp \
        qscintilla/Qt4Qt5/qscilexermakefile.cpp \
        qscintilla/Qt4Qt5/qscilexermarkdown.cpp \
        qscintilla/Qt4Qt5/qscilexermatlab.cpp \
        qscintilla/Qt4Qt5/qscilexeroctave.cpp \
        qscintilla/Qt4Qt5/qscilexerpascal.cpp \
        qscintilla/Qt4Qt5/qscilexerperl.cpp \
        qscintilla/Qt4Qt5/qscilexerpostscript.cpp \
        qscintilla/Qt4Qt5/qscilexerpo.cpp \
        qscintilla/Qt4Qt5/qscilexerpov.cpp \
        qscintilla/Qt4Qt5/qscilexerproperties.cpp \
        qscintilla/Qt4Qt5/qscilexerpython.cpp \
        qscintilla/Qt4Qt5/qscilexerruby.cpp \
        qscintilla/Qt4Qt5/qscilexerspice.cpp \
        qscintilla/Qt4Qt5/qscilexersql.cpp \
        qscintilla/Qt4Qt5/qscilexertcl.cpp \
        qscintilla/Qt4Qt5/qscilexertex.cpp \
        qscintilla/Qt4Qt5/qscilexerverilog.cpp \
        qscintilla/Qt4Qt5/qscilexervhdl.cpp \
        qscintilla/Qt4Qt5/qscilexerxml.cpp \
        qscintilla/Qt4Qt5/qscilexeryaml.cpp \
        qscintilla/Qt4Qt5/qscimacro.cpp \
        qscintilla/Qt4Qt5/qsciprinter.cpp \
        qscintilla/Qt4Qt5/qscistyle.cpp \
        qscintilla/Qt4Qt5/qscistyledtext.cpp \
        qscintilla/Qt4Qt5/MacPasteboardMime.cpp \
        qscintilla/Qt4Qt5/InputMethod.cpp \
        qscintilla/Qt4Qt5/SciAccessibility.cpp \
        qscintilla/Qt4Qt5/SciClasses.cpp \
        qscintilla/Qt4Qt5/ListBoxQt.cpp \
        qscintilla/Qt4Qt5/PlatQt.cpp \
        qscintilla/Qt4Qt5/ScintillaQt.cpp \
        qscintilla/lexers/LexA68k.cpp \
        qscintilla/lexers/LexAbaqus.cpp \
        qscintilla/lexers/LexAda.cpp \
        qscintilla/lexers/LexAPDL.cpp \
        qscintilla/lexers/LexAsm.cpp \
        qscintilla/lexers/LexAsn1.cpp \
        qscintilla/lexers/LexASY.cpp \
        qscintilla/lexers/LexAU3.cpp \
        qscintilla/lexers/LexAVE.cpp \
        qscintilla/lexers/LexAVS.cpp \
        qscintilla/lexers/LexBaan.cpp \
        qscintilla/lexers/LexBash.cpp \
        qscintilla/lexers/LexBasic.cpp \
        qscintilla/lexers/LexBatch.cpp \
        qscintilla/lexers/LexBibTeX.cpp \
        qscintilla/lexers/LexBullant.cpp \
        qscintilla/lexers/LexCaml.cpp \
        qscintilla/lexers/LexCLW.cpp \
        qscintilla/lexers/LexCmake.cpp \
        qscintilla/lexers/LexCOBOL.cpp \
        qscintilla/lexers/LexCoffeeScript.cpp \
        qscintilla/lexers/LexConf.cpp \
        qscintilla/lexers/LexCPP.cpp \
        qscintilla/lexers/LexCrontab.cpp \
        qscintilla/lexers/LexCsound.cpp \
        qscintilla/lexers/LexCSS.cpp \
        qscintilla/lexers/LexD.cpp \
        qscintilla/lexers/LexDiff.cpp \
        qscintilla/lexers/LexDMAP.cpp \
        qscintilla/lexers/LexDMIS.cpp \
        qscintilla/lexers/LexECL.cpp \
        qscintilla/lexers/LexEDIFACT.cpp \
        qscintilla/lexers/LexEiffel.cpp \
        qscintilla/lexers/LexErlang.cpp \
        qscintilla/lexers/LexErrorList.cpp \
        qscintilla/lexers/LexEScript.cpp \
        qscintilla/lexers/LexFlagship.cpp \
        qscintilla/lexers/LexForth.cpp \
        qscintilla/lexers/LexFortran.cpp \
        qscintilla/lexers/LexGAP.cpp \
        qscintilla/lexers/LexGui4Cli.cpp \
        qscintilla/lexers/LexHaskell.cpp \
        qscintilla/lexers/LexHex.cpp \
        qscintilla/lexers/LexHTML.cpp \
        qscintilla/lexers/LexInno.cpp \
        qscintilla/lexers/LexJSON.cpp \
        qscintilla/lexers/LexKix.cpp \
        qscintilla/lexers/LexKVIrc.cpp \
        qscintilla/lexers/LexLaTeX.cpp \
        qscintilla/lexers/LexLisp.cpp \
        qscintilla/lexers/LexLout.cpp \
        qscintilla/lexers/LexLua.cpp \
        qscintilla/lexers/LexMagik.cpp \
        qscintilla/lexers/LexMake.cpp \
        qscintilla/lexers/LexMarkdown.cpp \
        qscintilla/lexers/LexMatlab.cpp \
        qscintilla/lexers/LexMetapost.cpp \
        qscintilla/lexers/LexMMIXAL.cpp \
        qscintilla/lexers/LexModula.cpp \
        qscintilla/lexers/LexMPT.cpp \
        qscintilla/lexers/LexMSSQL.cpp \
        qscintilla/lexers/LexMySQL.cpp \
        qscintilla/lexers/LexNimrod.cpp \
        qscintilla/lexers/LexNsis.cpp \
        qscintilla/lexers/LexNull.cpp \
        qscintilla/lexers/LexOpal.cpp \
        qscintilla/lexers/LexOScript.cpp \
        qscintilla/lexers/LexPascal.cpp \
        qscintilla/lexers/LexPB.cpp \
        qscintilla/lexers/LexPerl.cpp \
        qscintilla/lexers/LexPLM.cpp \
        qscintilla/lexers/LexPO.cpp \
        qscintilla/lexers/LexPOV.cpp \
        qscintilla/lexers/LexPowerPro.cpp \
        qscintilla/lexers/LexPowerShell.cpp \
        qscintilla/lexers/LexProgress.cpp \
        qscintilla/lexers/LexProps.cpp \
        qscintilla/lexers/LexPS.cpp \
        qscintilla/lexers/LexPython.cpp \
        qscintilla/lexers/LexR.cpp \
        qscintilla/lexers/LexRebol.cpp \
        qscintilla/lexers/LexRegistry.cpp \
        qscintilla/lexers/LexRuby.cpp \
        qscintilla/lexers/LexRust.cpp \
        qscintilla/lexers/LexScriptol.cpp \
        qscintilla/lexers/LexSmalltalk.cpp \
        qscintilla/lexers/LexSML.cpp \
        qscintilla/lexers/LexSorcus.cpp \
        qscintilla/lexers/LexSpecman.cpp \
        qscintilla/lexers/LexSpice.cpp \
        qscintilla/lexers/LexSQL.cpp \
        qscintilla/lexers/LexSTTXT.cpp \
        qscintilla/lexers/LexTACL.cpp \
        qscintilla/lexers/LexTADS3.cpp \
        qscintilla/lexers/LexTAL.cpp \
        qscintilla/lexers/LexTCL.cpp \
        qscintilla/lexers/LexTCMD.cpp \
        qscintilla/lexers/LexTeX.cpp \
        qscintilla/lexers/LexTxt2tags.cpp \
        qscintilla/lexers/LexVB.cpp \
        qscintilla/lexers/LexVerilog.cpp \
        qscintilla/lexers/LexVHDL.cpp \
        qscintilla/lexers/LexVisualProlog.cpp \
        qscintilla/lexers/LexYAML.cpp \
        qscintilla/lexlib/Accessor.cpp \
        qscintilla/lexlib/CharacterCategory.cpp \
        qscintilla/lexlib/CharacterSet.cpp \
        qscintilla/lexlib/LexerBase.cpp \
        qscintilla/lexlib/LexerModule.cpp \
        qscintilla/lexlib/LexerNoExceptions.cpp \
        qscintilla/lexlib/LexerSimple.cpp \
        qscintilla/lexlib/PropSetSimple.cpp \
        qscintilla/lexlib/StyleContext.cpp \
        qscintilla/lexlib/WordList.cpp \
        qscintilla/src/AutoComplete.cpp \
        qscintilla/src/CallTip.cpp \
        qscintilla/src/CaseConvert.cpp \
        qscintilla/src/CaseFolder.cpp \
        qscintilla/src/Catalogue.cpp \
        qscintilla/src/CellBuffer.cpp \
        qscintilla/src/CharClassify.cpp \
        qscintilla/src/ContractionState.cpp \
        qscintilla/src/Decoration.cpp \
        qscintilla/src/Document.cpp \
        qscintilla/src/EditModel.cpp \
        qscintilla/src/Editor.cpp \
        qscintilla/src/EditView.cpp \
        qscintilla/src/ExternalLexer.cpp \
        qscintilla/src/Indicator.cpp \
        qscintilla/src/KeyMap.cpp \
        qscintilla/src/LineMarker.cpp \
        qscintilla/src/MarginView.cpp \
        qscintilla/src/PerLine.cpp \
        qscintilla/src/PositionCache.cpp \
        qscintilla/src/RESearch.cpp \
        qscintilla/src/RunStyles.cpp \
        qscintilla/src/ScintillaBase.cpp \
        qscintilla/src/Selection.cpp \
        qscintilla/src/Style.cpp \
        qscintilla/src/UniConversion.cpp \
        qscintilla/src/ViewStyle.cpp \
        qscintilla/src/XPM.cpp
