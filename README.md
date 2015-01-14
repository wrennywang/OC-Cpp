1.在object-c++类中调用c++类
1)ViewController.m--->ViewController.mm
2)#import "OcCallCpp.h"
3)OcCallCpp.h引入C++类头文件，#include "MyCppClass.h"
4)OcCallCpp.m--->OcCallCpp.mm

2.在c++类中调用object-c++类
1)OC-CppInterface.h
2)MyCppClass.cpp引入头文件, #include "OC-CppInterface.h"
3)MyOcClass.m--->MyOcClass.m
4)持有Oc对象，__bridge_retained
5)调用Oc对象方法，__bridge
6)释放Oc对象，__bridge_transfer
