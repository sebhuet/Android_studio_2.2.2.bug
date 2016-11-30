/* File : IRCodeProducer.i */
%module(directors="1") IRCodeProducer_Wrapper

%include "std_string.i"

%{
#include "./Pipo.h"
%}


%include "./Pipo.h"

%pragma(java) jniclasscode=%{
  static {
    try {
        System.loadLibrary("native-lib");
    } catch (UnsatisfiedLinkError e) {
      System.err.println("Native code library failed to load. \n" + e);
      System.exit(1);
    }
  }
%}
