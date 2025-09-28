
import { extend, ReactThreeFiber, ThreeElement, useFrame, useThree } from '@react-three/fiber'
import { useEffect, useRef } from 'react';
import * as THREE from "three";


// Add the following import type declaration in a .d.ts file (see below) to fix the import error.
import fragment from './glsl/hotreload.viss.glsl?raw'
import vertex from './glsl/simple.vert?raw';
import { betterShaderMaterial } from './betterShaderMaterial';


export default function Background() {
    const material = useRef<typeof ColorShiftMaterial>(null)

    useFrame((_, delta) => {
        const current = material.current;
        if (current)
            current.uTime += delta;
    })

    const { scene } = useThree();


    useEffect(() => {

        //scene.background = material;
      }, [scene]);

    return (
        <mesh>
            <planeGeometry args={[10, 10]} />
            <colorShiftMaterial key={ColorShiftMaterial.key} ref={material} uTime={0} />
        </mesh>
    )
}



const ColorShiftMaterial = betterShaderMaterial(
    { uTime: 0, color: new THREE.Color(0.2, 0.0, 0.1), uResolution: new THREE.Vector2(1, 1) },
    vertex, fragment
)



const ColorShiftMaterialWorse = new THREE.ShaderMaterial( {

    uniforms: { 
        uTime: { value: 0 },
        uTexture: { value: null }, 
        color: { value: new THREE.Color(0.2, 0.0, 0.1) }, 
        uResolution: { value: new THREE.Vector2(1, 1) } 
    },

    vertexShader: vertex,
    fragmentShader: fragment

} );

function Test<Uniforms>(params: THREE.ShaderMaterialParameters<Uniforms>) {
    return params;
}

const a = Test({

    uniforms: { 
        uTime: { value: 0 },
        uTexture: { value: null }, 
        color: { value: new THREE.Color(0.2, 0.0, 0.1) }, 
        uResolution: { value: new THREE.Vector2(1, 1) } 
    },

});

//a.uniforms

//ColorShiftMaterialWorse.uniforms = "ss";
const texture = new THREE.DataArrayTexture();
ColorShiftMaterialWorse.uniforms.uTexture.value = texture;


type Uniforms = {
  [key: string | number | symbol]: THREE.IUniform;
};
type MakeUniforms<Type> = {
  [Property in keyof Type]: Type[Property] extends THREE.IUniform<infer TValue> ? THREE.IUniform<TValue> : never;
};

interface UniformsTest {
    uTime: {
        value: number;
    }
}

type X = THREE.MakeUniforms<UniformsTest>;

const u: THREE.IUniform = { value: null };
u.value = 1;

const notAssignable: THREE.ShaderMaterial = ColorShiftMaterialWorse;

//ColorShiftMaterialWorse.i

declare module '@react-three/fiber' {
    interface ThreeElements {
        colorShiftMaterial: ThreeElement<typeof ColorShiftMaterial> & { uTime: number; },
        colorShiftMaterialWorse: ThreeElement<typeof ColorShiftMaterial> & { uTime: number; }
    }
}

extend({ ColorShiftMaterial })




