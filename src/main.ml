let _ = Js.log "Three.js BuckleScript binding r1"

type document
type element
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
let _ = textContent newDiv "HEllo test"
let _ = appendChild mainDiv newDiv


let ratio = (float_of_int width) /. (float_of_int height)

let scene = Three.Scene.make ()
let camera = Three.Camera.Perspective.make ~fov:45.0 ~aspect:ratio ~near:1.0 ~far:1000.0

let renderer = Three.WebGLRenderer.make ()
let _ = renderer##setSize width height