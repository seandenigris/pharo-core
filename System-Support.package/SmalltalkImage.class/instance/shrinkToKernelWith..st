PharoKernel
shrinkToKernelWith: additionalPackageNames

  "
  WARNING:  THIS METHOD WILL DESTROY YOUR IMAGE

  Use with cation and only on fresh Pharo images 
  "

  [ self privShrinkingProcessWith: additionalPackageNames ] forkAt: 40.

  Processor terminateActive.