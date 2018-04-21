let _ = Js.log "Three.js BuckleScript binding r1"

let ratio = 400.0 /. 400.0

let scene = Three.Scene.make ()
let camera = Three.Camera.Perspective.make ~fov:45.0 ~aspect:ratio ~near:1.0 ~far:1000.0

let renderer = Three.WebGLRenderer.make ()

(* renderer#setSize( window.innerWidth, window.innerHeight ) *)

(* Dom.document.appedChild *)
(* document.body.appendChild( renderer.domElement ); *)