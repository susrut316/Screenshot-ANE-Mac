//
//  ScreenShotANE.h
//  ScreenShotANE
//
//  Created by Riaxe Systems on 07/12/13.
//  Copyright (c) 2013 Riaxe Systems. All rights reserved.
//

#ifndef ScreenShotANE_ScreenShotANE_h
#define ScreenShotANE_ScreenShotANE_h

#define EXPORT __attribute__((visibility("default")))

#include <Adobe AIR/Adobe AIR.h>

FREObject getHelloWorld(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[]);
FREObject isSupported(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[]);

void contextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctions, const FRENamedFunction** functions);
void contextFinalizer(FREContext ctx);


EXPORT
void initializer(void** extData, FREContextInitializer* ctxInitializer, FREContextFinalizer* ctxFinalizer);

EXPORT
void finalizer(void* extData);

#endif
