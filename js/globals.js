import * as THREE from 'three';

export default {
  isPaused: false,
  currentRenderTargetIndex: 0,
  pingPongSteps: 60,
  clock: new THREE.Clock(),
  /** After EMPTY clear with obstacle mask on, inject mask into RT on first paint (no sim-only frame). */
  pendingMaskInject: false,
};