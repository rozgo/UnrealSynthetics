#include "UnrealSynthetics.h"
#include "SyntheticsUtil.h"

float USyntheticsUtil::MeanOfFloatArray(const TArray<float>& Samples)
{
    float T = 0.0f;
    for (auto I = 0; I < Samples.Num(); ++I) {
        T += Samples[I];
    }
    return T / Samples.Num();
}

float USyntheticsUtil::VarianceOfFloatArray(const TArray<float>& Samples)
{
    float M = MeanOfFloatArray(Samples);
    float R = 0.0f;
    for (auto I = 0; I < Samples.Num(); ++I) {
        R += FMath::Pow(Samples[I] - M, 2.0f);
    }
    return R / Samples.Num();
}

float USyntheticsUtil::MedianOfFloatArray(const TArray<float>& Samples)
{
    TArray<float> S;
    S.Append(Samples);
    S.Sort();
    
    int Length = S.Num();
    if (Length == 0) {
        return 0;
    }
    else if (Length == 1) {
        return S[0];
    }
    else if (Length % 2) {
        int Index = Length / 2;
        return S[Index];
    }
    else {
        int IndexA = Length / 2 - 1;
        int IndexB = Length / 2;
        return (S[IndexA] + S[IndexB]) / 2.0f;
    }
}

float USyntheticsUtil::StandardDeviationOfFloatArray(const TArray<float>& Samples)
{
    float V = VarianceOfFloatArray(Samples);
    return FMath::Sqrt(V);
}

FQuat USyntheticsUtil::EulerToQuaternion(float yaw, float pitch, float roll)
{
    FQuat ax = FQuat(FVector(1, 0, 0), FMath::DegreesToRadians(pitch));
    FQuat ay = FQuat(FVector(0, 1, 0), FMath::DegreesToRadians(yaw));
    FQuat az = FQuat(FVector(0, 0, 1), FMath::DegreesToRadians(roll));
    return ax * ay * az;
}



