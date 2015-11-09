Shader "Cg shader for RGB Cube1"
{
	SubShader
	{
		Pass
		{
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			
			void vert ( float4 vertexPos:POSITION , out float4 pos:SV_POSITION , out float4 col:TEXCOORD0 )
			{
				pos = mul( UNITY_MATRIX_MVP , vertexPos );
				col = vertexPos + float4( 0.5 , 0.5 , 0.5 , 0.0 ); // change -0.5~0.5 to 0.0~1.0
				return ;
			}
			

			float4 frag ( float4 pos:SV_POSITION , float4 col:TEXCOORD0 ) : COLOR
			{
				return col;
			}
			
			ENDCG
		}
	}
}
