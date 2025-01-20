##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=rpg
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/home/gapevi/Documentos/codelite/cpp
ProjectPath            :=/home/gapevi/Documentos/codelite/cpp/rpg
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/rpg
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=gapevi
Date                   :=19/01/25
CodeLitePath           :=/home/gapevi/.codelite
MakeDirCommand         :=mkdir -p
LinkerName             :=/bin/g++-12
SharedObjectLinkerName :=/bin/g++-12 -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=/home/gapevi/Documentos/codelite/cpp/build-$(WorkspaceConfiguration)/bin
OutputFile             :=../build-$(WorkspaceConfiguration)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            := $(IncludeSwitch)/usr/include/GL $(IncludeSwitch)/usr/include/glm $(IncludeSwitch)/usr/include/x86_64-linux-gnu $(IncludeSwitch)/usr/include/x86_64-linux-gnu/qt5 $(IncludeSwitch)/usr/include/x86_64-linux-gnu/qt5/QtCore $(IncludeSwitch)/usr/include/x86_64-linux-gnu/qt5/QtGui $(IncludeSwitch)/usr/include/x86_64-linux-gnu/qt5/QtWidgets $(IncludeSwitch)/usr/include/x86_64-linux-gnu/qt5/QtOpenGL $(IncludeSwitch)/usr/include/c++/11 $(IncludeSwitch)/usr/include/c++/11/x86_64-linux-gnu $(IncludeSwitch)/usr/include/c++/12 $(IncludeSwitch)/usr/include/c++/12/x86_64-linux-gnu $(IncludeSwitch)/usr/include  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                :=$(LibraryPathSwitch)/usr/lib/x86_64-linux-gnu  $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := /usr/bin/ar rcu
CXX      := /bin/g++-12
CC       := /bin/gcc-12
CXXFLAGS :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
CFLAGS   :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
CXXFLAGS:=-fPIC  -gdwarf-2 -O0 -Wall
LinkOptions ::= -lQt5Core -lQt5Gui -lQt5Widgets -lGLEW -lGL
Objects0=$(IntermediateDirectory)/dungeon.cpp$(ObjectSuffix) $(IntermediateDirectory)/weapon.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/items.cpp$(ObjectSuffix) $(IntermediateDirectory)/player.cpp$(ObjectSuffix) $(IntermediateDirectory)/potion.cpp$(ObjectSuffix) $(IntermediateDirectory)/inventory.cpp$(ObjectSuffix) $(IntermediateDirectory)/turn.cpp$(ObjectSuffix) $(IntermediateDirectory)/enemy.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/dungeon.cpp$(ObjectSuffix): dungeon.cpp $(IntermediateDirectory)/dungeon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/dungeon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/dungeon.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/dungeon.cpp$(DependSuffix): dungeon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/dungeon.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/dungeon.cpp$(DependSuffix) -MM dungeon.cpp

$(IntermediateDirectory)/dungeon.cpp$(PreprocessSuffix): dungeon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/dungeon.cpp$(PreprocessSuffix) dungeon.cpp

$(IntermediateDirectory)/weapon.cpp$(ObjectSuffix): weapon.cpp $(IntermediateDirectory)/weapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/weapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/weapon.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/weapon.cpp$(DependSuffix): weapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/weapon.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/weapon.cpp$(DependSuffix) -MM weapon.cpp

$(IntermediateDirectory)/weapon.cpp$(PreprocessSuffix): weapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/weapon.cpp$(PreprocessSuffix) weapon.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/items.cpp$(ObjectSuffix): items.cpp $(IntermediateDirectory)/items.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/items.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/items.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/items.cpp$(DependSuffix): items.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/items.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/items.cpp$(DependSuffix) -MM items.cpp

$(IntermediateDirectory)/items.cpp$(PreprocessSuffix): items.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/items.cpp$(PreprocessSuffix) items.cpp

$(IntermediateDirectory)/player.cpp$(ObjectSuffix): player.cpp $(IntermediateDirectory)/player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/player.cpp$(DependSuffix): player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/player.cpp$(DependSuffix) -MM player.cpp

$(IntermediateDirectory)/player.cpp$(PreprocessSuffix): player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/player.cpp$(PreprocessSuffix) player.cpp

$(IntermediateDirectory)/potion.cpp$(ObjectSuffix): potion.cpp $(IntermediateDirectory)/potion.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/potion.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/potion.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/potion.cpp$(DependSuffix): potion.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/potion.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/potion.cpp$(DependSuffix) -MM potion.cpp

$(IntermediateDirectory)/potion.cpp$(PreprocessSuffix): potion.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/potion.cpp$(PreprocessSuffix) potion.cpp

$(IntermediateDirectory)/inventory.cpp$(ObjectSuffix): inventory.cpp $(IntermediateDirectory)/inventory.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/inventory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/inventory.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/inventory.cpp$(DependSuffix): inventory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/inventory.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/inventory.cpp$(DependSuffix) -MM inventory.cpp

$(IntermediateDirectory)/inventory.cpp$(PreprocessSuffix): inventory.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/inventory.cpp$(PreprocessSuffix) inventory.cpp

$(IntermediateDirectory)/turn.cpp$(ObjectSuffix): turn.cpp $(IntermediateDirectory)/turn.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/turn.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/turn.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/turn.cpp$(DependSuffix): turn.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/turn.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/turn.cpp$(DependSuffix) -MM turn.cpp

$(IntermediateDirectory)/turn.cpp$(PreprocessSuffix): turn.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/turn.cpp$(PreprocessSuffix) turn.cpp

$(IntermediateDirectory)/enemy.cpp$(ObjectSuffix): enemy.cpp $(IntermediateDirectory)/enemy.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/gapevi/Documentos/codelite/cpp/rpg/enemy.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/enemy.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/enemy.cpp$(DependSuffix): enemy.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/enemy.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/enemy.cpp$(DependSuffix) -MM enemy.cpp

$(IntermediateDirectory)/enemy.cpp$(PreprocessSuffix): enemy.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/enemy.cpp$(PreprocessSuffix) enemy.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


