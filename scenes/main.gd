extends Node3D
class_name Main

var xr_interface: XRInterface;

func _init():
  Global.main = self;
# end _init

func _ready():
  xr_interface = XRServer.find_interface("OpenXR");

  if xr_interface and xr_interface.is_initialized():
    print("OpenXR Ready");

    DisplayServer.window_get_vsync_mode(DisplayServer.VSYNC_DISABLED);

    get_viewport().use_xr = true;
  else:
    print("OpenXR Init Failure");
# end _ready
