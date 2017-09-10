struct VSInput
{
    float3 position_os : POSITION0;
};

struct PSInput
{
    float4 position : SV_POSITION;
};

cbuffer OccluderCollectionConstants : register( b0 )
{
    float4x4 g_ViewProjection;
};

cbuffer ModelConstants : register( b1 )
{
    uint g_InstanceOffset;
};

StructuredBuffer< float4x4 > g_WorldMatrixBuffer : register( t0 );

PSInput VSMain( VSInput input, uint instance_id : SV_InstanceID )
{
    float4x4 world = g_WorldMatrixBuffer[ g_InstanceOffset + instance_id ];

    PSInput output = ( PSInput )0;
    output.position = mul( mul( float4( input.position_os, 1.0 ), world ), g_ViewProjection );
    return output;
}

float4 PSMain( PSInput input ) : SV_Target
{
    return float4( 0.0, 1.0, 0.0, 1.0 );
}