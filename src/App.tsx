import { Canvas } from '@react-three/fiber';
import { useRef } from 'react';
import { Mesh } from 'three';
import './styles.css'
import Background from './background';

function RotatingCube() {
  const meshRef = useRef<Mesh>(null);

  return (
    <mesh
      position={[0, 0, 0]}
      ref={meshRef}
      rotation={[0, 0, 0]}
    >
      <planeGeometry args={[10, 10, 10]} />
      <meshStandardMaterial color={'blue'} />
    </mesh>
  );
}

export default function App() {
  return (
    <Canvas camera={{ position: [0, 0, 5] }}>
      <ambientLight intensity={0.5} />
      <directionalLight position={[5, 5, 5]} />
      <Background/>

    </Canvas>
  );
}
