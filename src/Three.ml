
module rec Scene:
    sig
        type t
        external make : unit -> t = "Scene" [@@bs.new] [@@bs.module "THREE"] 
    end = Scene 


module rec Camera:
    sig
        type t
        module Perspective:
            sig
            external make : ?fov:float -> ?aspect:float -> ?near:float -> far:float -> t = "PerspectiveCamera" [@@bs.new] [@@bs.module "THREE"]
            end
    end = Camera


module rec WebGLRenderer:
    sig
        type t
        external make: unit -> t = "WebGLRenderer" [@@bs.new] [@@bs.module "THREE"] 
    end = WebGLRenderer