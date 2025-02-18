# Copyright 2019-2020 CERN and copyright holders of ALICE O2.
# See https://alice-o2.web.cern.ch/copyright for details of the copyright holders.
# All rights not expressly granted are reserved.
#
# This software is distributed under the terms of the GNU General Public
# License v3 (GPL Version 3), copied verbatim in the file "COPYING".
#
# In applying this license CERN does not waive the privileges and immunities
# granted to it by virtue of its status as an Intergovernmental Organization
# or submit itself to any jurisdiction.

add_subdirectory(Logger)

add_subdirectory(Foundation)

add_subdirectory(Core)

add_subdirectory(Utils)

add_subdirectory(AnalysisSupport)
add_subdirectory(CCDBSupport)
add_subdirectory(PhysicsSupport)
add_subdirectory(DataTakingSupport)

# FIXME: disable for now, since ROOT made a non backward compatible change
# RCombinedDS. Will reenable once we move to ROOT 6.30.01
#add_subdirectory(RootAnalysisHelpers)

# Build the GUI support only if we have DebugGUI
if (TARGET AliceO2::DebugGUI)
add_subdirectory(GUISupport)
endif()

add_subdirectory(TestWorkflows)

add_subdirectory(AODMerger)
add_subdirectory(DataInspector)
