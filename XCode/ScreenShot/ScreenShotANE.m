//
//  ScreenShotANE.m
//  ScreenShotANE
//
//  Created by Riaxe Systems on 07/12/13.
//  Copyright (c) 2013 Riaxe Systems. All rights reserved.
//

#import "ScreenShotANE.h"

#include <Adobe AIR/Adobe AIR.h>

uint32_t isSupportedInOS = 1;


FREObject getHelloWorld(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[])
{
    FREObject result;
    
    const char *str = "Hello World!!  This is your DLL talking!";
    FRENewObjectFromUTF8((uint32_t)strlen(str)+1, (const uint8_t *)str, &result);
    
    return result;
}

FREObject isSupported(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[])
{
    
    FREObject result;
    FRENewObjectFromBool( isSupportedInOS, &result);
    return result;
}


void contextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctions, const FRENamedFunction** functions)
{
    *numFunctions = 2;
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctions));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &isSupported;
    
    func[1].name = (const uint8_t*) "getHelloWorld";
    func[1].functionData = NULL;
    func[1].function = &getHelloWorld;
    
    *functions = func;
}




void contextFinalizer(FREContext ctx)
{
    return;
}

void initializer(void** extData, FREContextInitializer* ctxInitializer, FREContextFinalizer* ctxFinalizer)
{
    *ctxInitializer = &contextInitializer;
    *ctxFinalizer = &contextFinalizer;
}

void finalizer(void* extData)
{
    return;
}
