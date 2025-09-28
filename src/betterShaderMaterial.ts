import { shaderMaterial } from '@react-three/drei'
import * as THREE from 'three';
import { MeshBVHUniformStruct } from 'three-mesh-bvh';

interface ShaderMaterialUniforms {
    [name: string]: THREE.CubeTexture | THREE.Texture | Int32Array | Float32Array | THREE.Matrix4 | THREE.Matrix3 | THREE.Quaternion | THREE.Vector4 | THREE.Vector3 | THREE.Vector2 | THREE.Color | MeshBVHUniformStruct | number | boolean | Array<any> | null;
}

export function betterShaderMaterial<T extends ShaderMaterialUniforms>(uniforms: T, vertexShader: string, fragmentShader: string, onInit?: (material?: THREE.ShaderMaterial) => void)
    : typeof THREE.ShaderMaterial & { key: string; } & T
{
    return shaderMaterial(uniforms, vertexShader, fragmentShader, onInit) as any;
}