let _ = Js.log "Three.js BuckleScript binding r1"

type document
type element = Dom.element
external document:document = "" [@@bs.val]
external width:int = "window.innerWidth" [@@bs.val]
external height:int = "window.innerHeight" [@@bs.val]
external getElementById: string -> element = "" [@@bs.val][@@bs.scope "document"]
external appendChild: element -> element -> unit = "" [@@bs.send]
external textContent: element -> string -> unit= "" [@@bs.set]
external createElement: document -> string -> unit -> element = "" [@@bs.send]

let createDiv = createElement document "div"
let mainDiv = getElementById "main"


let newDiv = createDiv ()

let ratio = (float_of_int width) /. (float_of_int height)

let scene = Three.Scene.make ()
let camera = Three.Camera.Perspective.make ~fov:45.0 ~aspect:ratio ~near:1.0 ~far:1000.0

let renderer = Three.WebGLRenderer.make ()
let _ = renderer##setSize width height
let _ = appendChild mainDiv renderer##domElement

let geometry = Three.Geometry.Box.make 1 1 1
let material = Three.Material.MeshBasic.make [%bs.obj { color = int_of_string "0x00ff00" }]
let cube = Three.Mesh.make geometry material

let _ = scene##add cube
let _ = cube##rotation##x #= 10.0

let _ = camera##position##z #= 5.0

let _ = renderer##render scene camera