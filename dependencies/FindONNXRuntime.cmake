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

find_package(onnxruntime CONFIG)
if (NOT onnxruntime_FOUND)
  find_package(ONNXRuntime::ONNXRuntime CONFIG)
  if (ONNXRuntime::ONNXRuntime_FOUND)
    set(onnxruntime_FOUND 1)
    add_library(onnxruntime::onnxruntime ALIAS ONNXRuntime::ONNXRuntime)
  endif()
endif()