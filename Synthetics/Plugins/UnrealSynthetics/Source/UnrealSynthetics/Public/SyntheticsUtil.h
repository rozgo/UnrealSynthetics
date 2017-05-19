#pragma once

#include "Engine.h"
#include "SyntheticsUtil.generated.h"



UCLASS( ClassGroup=(Synthetics), meta=(BlueprintSpawnableComponent) )
class USyntheticsUtil : public UObject
{
	GENERATED_BODY()

public:	
    
    UFUNCTION(BlueprintCallable, BlueprintPure, Category = "Math|Float")
    static float MeanOfFloatArray(const TArray<float>& Samples);
    
    UFUNCTION(BlueprintCallable, BlueprintPure, Category = "Math|Float")
    static float VarianceOfFloatArray(const TArray<float>& Samples);
    
    UFUNCTION(BlueprintCallable, BlueprintPure, Category="Math|Float")
    static float MedianOfFloatArray(const TArray<float>& Samples);
    
    UFUNCTION(BlueprintCallable, BlueprintPure, Category="Math|Float")
    static float StandardDeviationOfFloatArray(const TArray<float>& Samples);
    
    UFUNCTION(BlueprintCallable, BlueprintPure, Category="Math|Float")
    static FQuat EulerToQuaternion(float yaw, float pitch, float roll);
};
